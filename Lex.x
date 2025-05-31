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


tokens :-

<0> $white+ ;
<0> @Id {\s -> ID s}
<0> @numInt {\s -> NUMINT (read s)}
<0> @numDouble {\s -> NUMDOUBLE (read s)} -- read = func da biblioteca padrão de haskell que recebe uma string em um tipo a, nesse caso, double, pois @num é double
<0> "+" {\s -> ADD}  
<0> "-" {\s -> SUB}  
<0> "*" {\s -> MUL}  
<0> "/" {\s -> DIV}  
<0> "(" {\s -> LPAR}  
<0> ")" {\s -> RPAR} 
<0> "==" {\s -> REQ}
<0> "/=" {\s -> RNE}
<0> "<=" {\s -> RLE}
<0> "<" {\s -> RLT}
<0> ">=" {\s -> RGE}
<0> ">" {\s -> RGT}
<0> "||" {\s -> OR}
<0> "&&" {\s -> AND}
<0> "!" {\s -> NOT}
<0> "int" {\s -> DECINT}
<0> "float" {\s -> DECFLOAT}
<0> "string" {\s -> DECSTRING}
<0> ";" {\s -> FIMLINHA}
<0> . {\s -> ERROR("Fez caquinha")}
{
-- As acoes tem tipo :: String -> Token

testLex = do s <- getLine
             print (alexScanTokens s)
}
