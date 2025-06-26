module Semantico where

import System.IO
import RI -- import do arquivo .hs para representação intermediária
import qualified Lex as L -- Todas as func desse modulo devem ser usados com o L na frente

data Result a = Result (Bool, String, a) deriving Show

instance Functor Result where
  fmap f (Result (b, s, a)) = Result (b, s, f a)

instance Applicative Result where
  pure a = Result (False, "", a)
  Result (b1, s1, f) <*> Result (b2, s2, x) = Result (b1 || b2, s1 <> s2, f x)   

instance Monad Result where 
--  return a = Result (False, "", a)
  Result (b, s, a) >>= f = let Result (b', s', a') = f a in Result (b || b', s++s', a')
  

naLista _ [] = return False
naLista e (x:xs) = if(e==x) then return True
                   else naLista e xs

consulta :: [Var] -> [Char] -> Result Tipo
consulta [] v = do {errorMsg $ "Nao achou a variavel " ++ v; return TVoid}  
consulta tab@(i:#:(t,_):xs) v = if v==i then return t
                                else consulta xs v

--Id :->: ([Var], Tipo) 
-- consultaFunc ["foo":->:([], TVoid)] "foo"
consultaFunc :: [Funcao] -> Id -> Result Tipo
consultaFunc [] f = do {errorMsg $ "Nao achou a funcao " ++ show f; return TVoid}
consultaFunc (id:->:(vs,t):xs) f = if f==id then return t
                                       else consultaFunc xs f
contaFun [] f = 0
contaFun (id:->:(vs,t):xs) f = if f == id then contaFun xs f + 1
                               else contaFun xs f
auxFun [] = Result(False, "", ())
auxFun ls@((id:->:(vs,t)):xs) = if ((contaFun ls id) > 1) then do {errorMsg $ "Funcao multiplamente declarada: " ++ show id; auxVar vs; auxFun xs}
                                else do {auxVar vs; errorMsg $ " na funcao " ++ show id; auxFun xs} 

contaVar [] v = 0
contaVar (id:#:(t,_):xs) v = if v == id then contaVar xs v + 1
                             else contaVar xs v 

auxVar [] = Result(False, "", ())
auxVar ls@(id:#:(t,_):xs) = if((contaVar ls id) > 1) then do {errorMsg $ "Variavel multiplamente declarada: " ++ show id; auxVar xs} 
                         else auxVar xs
errorMsg s = Result (True, "Erro:"++s++"\n", ())

warningMsg s = Result (False, "Advertencia:"++s++"\n", ())

coercao op e1 e2 t1 t2 | t1 == t2                    = return (t1, op e1 e2)
                       | t1 == TInt && t2 == TDouble = return (t2, op (IntDouble e1) e2)
                       | t1 == TDouble && t2 == TInt = return (t1, op e1 (IntDouble e2))
                       | otherwise = do errorMsg $ "Erro de tipos na expressao: " ++ show (op e1 e2) ++ ", " ++
                                                   show e1 ++ " eh do tipo " ++ show t1 ++ " e " ++ show e2 ++
                                                   " eh do tipo " ++ show t2 ++" \n"
                                        return (t1, op e1 e2)


coercaoDiv :: (Expr -> Expr -> Expr) -> Expr -> Expr -> Tipo -> Tipo -> Result (Tipo, Expr)
coercaoDiv op e1 e2 t1 t2 =
    case e2 of
        Const (CInt 0)    -> do
            errorMsg $ "Erro: divisor eh 0 na expressao: " ++ show (op e1 e2)
            return (t1, op e1 e2)
        Const (CDouble 0) -> do
            errorMsg $ "Erro: divisor eh 0.0 na expressao: " ++ show (op e1 e2)
            return (t1, op e1 e2)
        _ -> coercao op e1 e2 t1 t2

tExpr :: [Funcao] -> [Var] -> Expr -> Result(Tipo, Expr)

tExpr tfun tab (Const (CInt n)) = return (TInt, Const(CInt n))
tExpr tfun tab (Const (CDouble n)) = return (TDouble, Const(CDouble n))
tExpr tfun tab (Const (CString s)) = return (TString, Const(CString s))

tExpr tfun tab (IntDouble e1) = do 
    (t, e') <- tExpr  tfun tab e1 
    if t == TInt then pure (TDouble, IntDouble e')
       else if t == TDouble then do  
            pure (t, e')
        else do
            errorMsg("Tipo inválido para conversão " ++ show t) 
            return(t, e')

tExpr tfun tab(DoubleInt e1) = do
   (t, e') <- tExpr tfun tab e1
   if t == TDouble then pure (TInt, DoubleInt e')
   else if t == TInt then do
    pure (t, e')
    else do
      errorMsg("Tipo inválido para conversão " ++ show t)
      return(t, e')

tExpr tfun tab (IdVar x) = do {t <- consulta tab x; return (t, IdVar x)}
tExpr tfun tab (Lit s) = return (TString, Lit s)
tExpr tfun tab (Add e1 e2) = do {(t1, e1') <- tExpr tfun tab e1;
                                 (t2, e2') <- tExpr tfun tab e2;
                                 coercao Add e1' e2' t1 t2}
tExpr tfun tab (Sub e1 e2) = do {(t1, e1') <- tExpr tfun tab e1;
                                 (t2, e2') <- tExpr tfun tab e2;
                                 coercao Sub e1' e2' t1 t2}
tExpr tfun tab (Mul e1 e2) = do {(t1, e1') <- tExpr tfun tab e1;
                                 (t2, e2') <- tExpr tfun tab e2;
                                 coercao Mul e1' e2' t1 t2}

tExpr tfun tab (Div e1 e2) = do {(t1, e1') <- tExpr tfun tab e1;
                                 (t2, e2') <- tExpr tfun tab e2;
                                 coercaoDiv Div e1' e2' t1 t2}

auxExprR :: [Funcao] -> [Var] -> ExprR -> Result ExprR
auxExprR tfun tab op@(Req e1 e2) = tExprR tfun tab Req e1 e2
auxExprR tfun tab op@(Rdif e1 e2) = tExprR tfun tab Rdif e1 e2
auxExprR tfun tab op@(Rle e1 e2) = tExprR tfun tab Rle e1 e2
auxExprR tfun tab op@(Rlt e1 e2) = tExprR tfun tab Rlt e1 e2
auxExprR tfun tab op@(Rge e1 e2) = tExprR tfun tab Rge e1 e2
auxExprR tfun tab op@(Rgt e1 e2) = tExprR tfun tab Rgt e1 e2


-- Req, Rdif, Rle, Rlt... são como funções que recebem dois parâmetros
-- exemplo de insert: tExprR [] [] Req (Const (CInt 0)) (Const (CDouble 3.0))
tExprR :: [Funcao] -> [Var] -> (Expr -> Expr -> ExprR) -> Expr -> Expr -> Result ExprR
tExprR tfun tab op e1 e2 = do
  (t1, e1') <- tExpr tfun tab e1
  (t2, e2') <- tExpr tfun tab e2
  if t1 == TString && t2 /= TString || t1 /= TString && t2 == TString
    then do
      errorMsg("Variaveis de tipos diferentes (as duas devem ser TString), expressões informadas: " ++ show e1 ++ " e " ++ show e2)
      return (op e1' e2')
    else if t1 == t2
      then pure (op e1' e2')
      else if t1 == TInt && t2 == TDouble then do
        warningMsg("Conversão implicita IntDouble na primeira expressao " ++ show e1)
        return (op (IntDouble e1') e2')
      else if t1 == TDouble && t2 == TInt then do
        warningMsg("Conversão implicita IntDouble na segunda expressao " ++ show e2)
        return (op e1' (IntDouble e2'))
      else do
        errorMsg("Expressões incompatíveis " ++ show e1' ++ " com " ++ show e2')
        return(op e1' e2)

auxExprL :: [Funcao] -> [Var] -> ExprL -> Result ExprL
auxExprL tfun tab op@(And e1 e2) = tExprL tfun tab And e1 e2
auxExprL tfun tab op@(Or e1 e2) = tExprL tfun tab Or e1 e2
auxExprL tfun tab op@(Not e1) = auxExprL tfun tab e1
auxExprL tfun tab op@(Rel rop) = pure Rel <*> auxExprR tfun tab rop


tExprL :: [Funcao] -> [Var] -> (ExprL -> ExprL -> ExprL) -> ExprL -> ExprL -> Result ExprL
tExprL tfun tab op e1 e2 = do
  e1' <- auxExprL tfun tab e1
  e2' <- auxExprL tfun tab e2
  pure(op e1' e2')



