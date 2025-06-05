module Token where
import Data.Type.Bool (If)
import Text.Printf (PrintfArg)

data Token
  -- Constantes
  = NUMDOUBLE Double
  | NUMINT Int

  -- Id de variável
  | ID String

  -- Erro de simbolo não reconhecido
  | ERROR String

  -- Operações Aritiméticas
  | ADD
  | SUB
  | MUL
  | DIV
  | LPAR
  | RPAR

  -- Operações Relacionais
  | REQ
  | RNE
  | RLE
  | RLT
  | RGE
  | RGT

  -- Operações Lógicas
  | AND
  | OR
  | NOT

  -- Declarações de tipos
  | DECINT
  | DECFLOAT
  | DECSTRING
  | LIT String
  | DECVOID

  -- Comandos
  | IF
  | ELSE
  | ATRIB
  | WHILE
  | PRINT
  | READ
  | RET
  | LBRACK
  | RBRACK

  -- ',' e ';'
  | FIMLINHA
  | VIRGULA
  deriving (Eq, Show)
  
