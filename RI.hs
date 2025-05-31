module RI where

type Id = String

data Tipo = TDouble 
          | TInt 
          | TString 
          | TVoid deriving (Show, Eq)

data Var = Id :#: (Tipo, Int) deriving Show

data TCons = CDouble Double 
           | CInt Int deriving Show

data Inicio = Expr Expr
            | Var Var
            | ExprL ExprL deriving Show

data ExprL = And ExprL ExprL 
           | Or ExprL ExprL 
           | Not ExprL 
           | Rel ExprR deriving Show

data ExprR = Req Expr Expr 
           | Rdif Expr Expr 
           | Rlt Expr Expr
           | Rgt Expr Expr 
           | Rle Expr Expr 
           | Rge Expr Expr deriving Show

data Expr = Add Expr Expr |
            Mul Expr Expr |
            Sub Expr Expr |
            Div Expr Expr |
            Neg Expr      |
            IdVar String  |
            Const TCons deriving Show -- (Pode ser impresso na tela) Show :: a(Tipo de dado qualquer) -> String


-- (Add (Const 1) (Mul (Const 2) (Const 3))) -> exemplo do 1 + 2 * 3
