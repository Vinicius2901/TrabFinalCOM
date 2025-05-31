module Token where

data Token
  = NUMDOUBLE Double
  | NUMINT Int
  | ID String
  | ERROR String
  | ADD
  | SUB
  | MUL
  | DIV
  | LPAR
  | RPAR
  | REQ
  | RNE
  | RLE
  | RLT
  | RGE
  | RGT
  | AND
  | OR
  | NOT
  | DECINT
  | DECFLOAT
  | DECSTRING
  | FIMLINHA
  deriving (Eq, Show)
  
