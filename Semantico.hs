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
  

consulta [] v = do {errorMsg $ "Nao achou a variavel " ++ v; return TVoid}  
consulta tab@(i:#:(t,_):xs) v = if v==i then return t
                                else consulta xs v


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

tExpr tfun tab (Const (CInt n)) = return (TInt, Const(CInt n))
tExpr tfun tab (Const (CDouble n)) = return (TDouble, Const(CDouble n))
tExpr tfun tab (Const (CString s)) = return (TString, Const(CString s))

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
          