import Control.Monad.State
import RI

type Estado = State String

novoLabel::State Int String 
novoLabel = do {
    n <- get; 
    put (n+1); 
    return ("l"++show n)}

genCab nome = return (".class public " ++ nome ++ 
                      "\n.super java/lang/Object\n\n.method public <init>()V\n\taload_0\n\tinvokenonvirtual java/lang/Object/<init>()V\n\treturn\n.end method\n\n")

genMainCab s l = return (".method public static main([Ljava/lang/String;)V" ++
                         "\n\t.limit stack " ++ show s ++
                         "\n\t.limit locals " ++ show l ++ "\n\n")

genExprL :: a -> [Var] -> [Funcao] -> String -> String -> ExprL -> State Int String
genExprL c tab fun v f (Rel e) = genExprR c tab fun v f e
genExprL c tab fun v f (And e1 e2) = do {
    l1 <- novoLabel; 
    e1' <- genExprL c tab fun l1 f e1; 
    e2' <- genExprL c tab fun v f e2; 
    return (e1'++l1++":\n"++e2')
}
-- todo

genExprRAux :: a -> [Var] -> [Funcao] -> String -> String -> (Expr -> Expr -> ExprR) -> Expr -> Expr -> State Int String
genExprRAux c tab fun v f op e1 e2 = do {
  (t1, e1') <- genExpr c tab fun e1; 
  (t2, e2') <- genExpr c tab fun e2;
  
  case (op e1 e2) of
    (Req e1 e2) -> return (e1'++e2'++genRel t1 t2 v "eq"++"\tgoto "++show f++"\n")
    (Rdif e1 e2) -> return (e1'++e2'++genRel t1 t2 v "ne"++"\tgoto "++show f++"\n")
    (Rle e1 e2) -> return (e1'++e2'++genRel t1 t2 v "le"++"\tgoto "++show f++"\n")
    (Rlt e1 e2) -> return (e1'++e2'++genRel t1 t2 v "lt"++"\tgoto "++show f++"\n")
    (Rge e1 e2) -> return (e1'++e2'++genRel t1 t2 v "ge"++"\tgoto "++show f++"\n")
    (Rgt e1 e2) -> return (e1'++e2'++genRel t1 t2 v "gt"++"\tgoto "++show f++"\n")
}

genExprR :: a -> [Var] -> [Funcao] -> String -> String -> ExprR -> State Int String 
genExprR c tab fun v f (Req e1 e2) = genExprRAux c tab fun v f Req e1 e2
genExprR c tab fun v f (Rdif e1 e2) = genExprRAux c tab fun v f Rdif e1 e2
genExprR c tab fun v f (Rle e1 e2) = genExprRAux c tab fun v f Rle e1 e2
genExprR c tab fun v f (Rlt e1 e2) = genExprRAux c tab fun v f Rlt e1 e2
genExprR c tab fun v f (Rge e1 e2) = genExprRAux c tab fun v f Rge e1 e2
genExprR c tab fun v f (Rgt e1 e2) = genExprRAux c tab fun v f Rgt e1 e2

genRel t1 t2 v op = "if_icmp" ++ op ++ " " ++ show v



genInt i = if i >= 0 && i <= 5 then "iconst_"++ show i ++"\n"
           else if i >= 6 && i < 128 then "bipush " ++ show i ++ "\n"
           else "ldc " ++ show i ++ "\n"
genDouble d = "ldc " ++ show d

genLit s = "ldc " ++ s

genExpr :: a -> [Var] -> [Funcao] -> Expr -> State Int (Tipo, String)
genExpr c tab fun (Const (CInt i)) = return (TInt, genInt i)
genExpr c tab fun (Const (CDouble d)) = return (TDouble, genDouble d)
genExpr c tab fun (Lit s) = return(TString, genLit s)
genExpr c tab fun (Add e1 e2) = genExprAux c tab fun Add e1 e2
genExpr c tab fun (Sub e1 e2) = genExprAux c tab fun Sub e1 e2
genExpr c tab fun (Mul e1 e2) = genExprAux c tab fun Mul e1 e2
genExpr c tab fun (Div e1 e2) = genExprAux c tab fun Div e1 e2

genExprAux :: a -> [Var] -> [Funcao] -> (Expr -> Expr -> Expr) -> Expr -> Expr -> State Int (Tipo, String)
genExprAux c tab fun op e1 e2 = do {
  (t1, e1') <- genExpr c tab fun e1;
  (t2, e2') <- genExpr c tab fun e2;
  
  case (op e1 e2) of
    (Add e1 e2) -> return (t1, e1' ++ e2' ++ genOp t1 "add")
    (Sub e1 e2) -> return (t1, e1' ++ e2' ++ genOp t1 "sub")
    (Mul e1 e2) -> return (t1, e1' ++ e2' ++ genOp t1 "mul")
    (Div e1 e2) -> return (t1, e1' ++ e2' ++ genOp t1 "div")  

}
genOp t op = do
    case t of
        TInt -> "i" ++ op
        TDouble -> "d" ++ op


main = do
    let inicial = 0
    let expr = (Add (Const (CInt 10)) (Const (CInt 20)))
    let ((t, s), f) = runState (genExpr "a" [] [] expr) inicial
    -- let exprR = (Req (Const (CInt 10)) (Const (CInt 30)))
    -- let (s, f) = runState (genExprR "a" [] [] "l1" "l2" exprR) inicial
    putStrLn(s)


-- genCmd c tab fun (While e b) = do {
--     li <- novoLabel; 
--     lv <- novoLabel; 
--     lf <- novoLabel; 
--     e' <- genExprL c tab fun lv lf e; 
--     b' <- genBloco c tab fun b; 
--     return (li++":\n"++e'++lv++":\n"++b'++"\tgoto "++li++"\n"++lf++":\n")}
-- todo

-- gerar nome p = fst $ runState (genProg nome p) 0