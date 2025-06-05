{
module Parser where

import Token
import RI -- import do arquivo .hs para representação intermediária
import qualified Lex as L -- Todas as func desse modulo devem ser usados com o L na frente

}

-- data Either a b = Left a | Right b

%name calc -- Nome da func gerada por parser
%tokentype { Token } -- Nome do tipo de dado retornado pelo léxico
%error { parseError } -- Função chamada em situação de erro
%token 

-- Operações aritiméticas
  '+'       {ADD}
  '-'       {SUB}
  '*'       {MUL}
  '/'       {DIV}
  '('       {LPAR}
  ')'       {RPAR}

-- Operadores Relacionais
  '=='      {REQ}
  '/='      {RNE}
  '<='      {RLE}
  '<'       {RLT}
  '>='      {RGE}
  '>'       {RGT}

-- Operadores Lógicos
  '||'      {OR}
  '&&'      {AND}
  '!'       {NOT}

-- Declarações
  'int'     {DECINT}
  'float'   {DECFLOAT}
  'string'  {DECSTRING}
  ';'       {FIMLINHA}
  ','       {VIRGULA}

-- Comandos
  'if'      {IF}
  'else'    {ELSE}
  'return'  {RET}
  '{'       {LBRACK}
  '}'       {RBRACK}

  NumDouble {NUMDOUBLE $$}
  NumInt    {NUMINT $$} -- Cifrão diz qual valor vai ser pego como atributo do não terminal
  Id        {ID $$}
  Literal   {LIT $$}

%%

--Expr  : Expr '+' Term       {$1 + $3} -- Expr recebe a posição 1 da produção somada à posição 3 da produção (E.val = E1.val + T.val)
--      | Expr '-' Term       {$1 - $3} -- Expr recebe a subtração da posição 1 da produção com a posução 3 da produção(E.val = E1.val - T.val) -> '-' aqui é operador binário
--      | Term                {$1} -- Expr recebe a posição 1 da produção(E.val = T.val)

--Term  : Term  '*' Factor    {$1 * $3}
--      | Term '/' Factor     {$1 / $3}
--      | Factor              {$1}

--Factor : Num                {$1}
--       | '(' Expr ')'       {$2}
--       | '-' Factor	    {negate $2} -- '-' como operador unário (tem maior precedência)


Inicio : Expr                                {Expr $1}
       | ExprL                               {ExprL $1}
       | Declaracoes                         {Vars $1}
       | Bloco                               {Bloco $1}
      --  | DecFuncs                            {Funcs $1}

Tipo  : 'int'                                {TInt}
      | 'float'                              {TDouble}
      | 'string'                             {TString}

Bloco : '{' ListaCmd '}'                     {$2}

ListaCmd : ListaCmd Cmd                      {$1 ++ [$2]}
         | Cmd                               {[$1]}

Cmd : CmdSe                                  {$1}
--     | CmdEnquanto
--     | CmdAtrib
--     | CmdEscrita
--     | CmdLeitura
--     | CmdEscrita
--     | ChamadaProc
    | Retorno                                {$1}

Retorno : 'return' Expr ';'                   {Ret (Just $2)}
      --   | 'return' Literal ';'                {Ret (Just $2)}
        | 'return' ';'                        {Ret Nothing}

CmdSe : 'if' '(' ExprL ')' Bloco              {If $3 $5 []}
      | 'if' '(' ExprL ')' Bloco 'else' Bloco {If $3 $5 $7}

-- CmdAtrib : 'id' '=' Expr ';'
--          | 'id' '=' Literal ';'

-- CmdEscrita : 


Declaracoes  : Declaracoes Declaracao        {$1 ++ $2}
             | Declaracao                    {$1}

Declaracao   : Tipo ListaId ';'              {map(\x -> x:#: ($1, 0)) $2}

ListaId : ListaId ',' IdVar                  {$1 ++ [$3]} 
	  | IdVar                              {[$1]} 

ExprL : ExprL '||' TermL                     {Or $1 $3}
      | ExprL '&&' TermL                     {And $1 $3}
      | TermL                                {$1}

TermL : '!' TermL                            {Not $2}
      | ExprR                                {Rel $1}

ExprR : Expr '==' Expr                       {Req $1 $3}
      | Expr '/=' Expr                       {Rdif $1 $3}
      | Expr '<=' Expr                       {Rle $1 $3}
      | Expr '<' Expr                        {Rlt $1 $3}
      | Expr '>=' Expr                       {Rge $1 $3}
      | Expr '>' Expr                        {Rgt $1 $3}


Expr  : Expr '+' Term                        {Add $1 $3} -- Expr recebe a posição 1 da produção somada à posição 3 da produção (E.val = E1.val + T.val)
      | Expr '-' Term                        {Sub $1 $3} -- Expr recebe a subtração da posição 1 da produção com a posução 3 da produção(E.val = E1.val - T.val) -> '-' aqui é operador binário
      | Term                                 {$1}        -- Expr recebe a posição 1 da produção(E.val = T.val)

Term  : Term  '*' Factor                     {Mul $1 $3}
      | Term '/' Factor                      {Div $1 $3}
      | Factor                               {$1}

Factor : TConst                              {Const $1}
       | '(' Expr ')'                        {$2}
       | '-' Factor	                     {Neg $2} -- '-' como operador unário (tem maior precedência)
       | IdVar                               {IdVar $1}

IdVar  : Id                                  {$1}

TConst : NumInt                              {CInt $1}
       | NumDouble                           {CDouble $1}



{
parseError :: [Token] -> a
parseError s = error ("Parse error:" ++ show s)

main = do putStr "Expressão:"
          s <- getLine
          case calc(L.alexScanTokens s) of
            Expr v -> print v
            ExprL v -> print v
            Vars v -> print v
            Bloco v -> print v
            -- Funcs v -> print v
}
