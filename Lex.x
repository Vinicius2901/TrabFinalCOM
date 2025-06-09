{
module Lex where

import Token
}

%wrapper "basic"

$digit = [0-9]          -- digits
$character = [a-zA-Z]
@numDouble = $digit+(\.$digit+)?
@numInt = $digit+
@Id = ($character($character+ | $digit+ | _+)*) 
    | (_(($character | $digit | _)+)) 
@literal = \"[^ \"]*\" 

tokens :-

-- Reconhecimento de espaços em branco
<0> $white+ ;

-- Operações Aritiméticas
<0> "+"          {\s -> ADD}  
<0> "-"          {\s -> SUB}  
<0> "*"          {\s -> MUL}  
<0> "/"          {\s -> DIV}  
<0> "("          {\s -> LPAR}  
<0> ")"          {\s -> RPAR} 

-- Operações Relacionais
<0> "=="         {\s -> REQ}
<0> "/="         {\s -> RNE}
<0> "<="         {\s -> RLE}
<0> "<"          {\s -> RLT}
<0> ">="         {\s -> RGE}
<0> ">"          {\s -> RGT}

-- Operações Lógicas
<0> "||"         {\s -> OR}
<0> "&&"         {\s -> AND}
<0> "!"          {\s -> NOT}

-- Declarações de tipos
<0> "int"        {\s -> DECINT}
<0> "double"      {\s -> DECDOUBLE}
<0> "string"     {\s -> DECSTRING}
<0> "void"       {\s -> DECVOID}

-- Comandos
<0> "if"         {\s -> IF}
<0> "else"       {\s -> ELSE}
<0> "while"      {\s -> WHILE}
<0> "="          {\s -> ATRIB}
<0> "print"      {\s -> ESCR}
<0> "read"       {\s -> LEIT}
<0> "return"     {\s -> RET}
<0> "{"          {\s -> LBRACK}
<0> "}"          {\s -> RBRACK}

-- ',' e ';'
<0> ","          {\s -> VIRGULA}
<0> ";"          {\s -> FIMLINHA}

-- Constantes e Identificação de variáveis
<0> @Id          {\s -> ID s}
<0> @numInt      {\s -> NUMINT (read s)}
<0> @numDouble   {\s -> NUMDOUBLE (read s)} -- read = func da biblioteca padrão de haskell que recebe uma string em um tipo a, nesse caso, double, pois @num é double
<0> @literal     {\s -> LIT (read s)}

-- Erro de reconhecimento de simbolo
<0> . {\s -> ERROR("Fez caquinha")}
{
-- As acoes tem tipo :: String -> Token

testLex = do s <- getLine
             print (alexScanTokens s)
}
