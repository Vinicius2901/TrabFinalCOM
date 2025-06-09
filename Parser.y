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
  'double'   {DECDOUBLE}
  'string'  {DECSTRING}
  'void'    {DECVOID}
  ';'       {FIMLINHA}
  ','       {VIRGULA}

-- Comandos
  'if'      {IF}
  'else'    {ELSE}
  'while'   {WHILE}
  '='       {ATRIB}
  'print'   {ESCR}
  'read'    {LEIT}
  'return'  {RET}
  '{'       {LBRACK}
  '}'       {RBRACK}

  NumDouble {NUMDOUBLE $$}
  NumInt    {NUMINT $$} -- Cifrão diz qual valor vai ser pego como atributo do não terminal
  Id        {ID $$}
  Literal   {LIT $$}

%%
-- TODO: Programa!!!!
Inicio         : Expr                                {Expr $1}
              --  | ExprL                               {ExprL $1}
              --  | Declaracoes                         {Vars $1}
               | ExprL                               {ExprL $1}
              --  | Declaracoes                         {Vars $1}
              --  | Bloco                               {Bloco $1}
              --  | DeclParams                          {DeclParams $1}
               | DeclFuncs                           {Funcs $1}
              --  | BlocoPrinc                          {BlocoPrinci $1}
               | DeclFuncs                           {Funcs $1}
              --  | BlocoPrinc                          {BlocoPrinci $1}

Tipo           : 'int'                               {TInt}    -- Tipo retorna o dado Tipo
               | 'double'                            {TDouble}
               | 'string'                            {TString}

DeclFuncs      : DeclFuncs Func                      {$1 ++ [$2]}
               | Func                                {[$1]}
DeclFuncs      : DeclFuncs Func                      {$1 ++ [$2]}
               | Func                                {[$1]}

Func           : TipoRet Id '(' DeclParams ')' BlocoPrinc {($2 :->: ($4, $1),($2, fst($6), snd($6)))}
               | TipoRet Id '(' ')' BlocoPrinc            {($2 :->: ([], $1),($2, fst($5), snd($5)))}
Func           : TipoRet Id '(' DeclParams ')' BlocoPrinc {($2 :->: ($4, $1),($2, fst($6), snd($6)))}
               | TipoRet Id '(' ')' BlocoPrinc            {($2 :->: ([], $1),($2, fst($5), snd($5)))}

TipoRet        : Tipo                                {$1}
               | 'void'                              {TVoid}
TipoRet        : Tipo                                {$1}
               | 'void'                              {TVoid}

DeclParams     : DeclParams ',' Param                {$1 ++ [$3]}
               | Param                               {[$1]}
DeclParams     : DeclParams ',' Param                {$1 ++ [$3]}
               | Param                               {[$1]}

Param          : Tipo IdVar                          {$2 :#: ($1, 0)}
Param          : Tipo IdVar                          {$2 :#: ($1, 0)}

BlocoPrinc     : '{' Declaracoes ListaCmd '}'        {($2, $3)} -- BlocoPrincipal retorna uma lista de variáveis e uma lista de comandos, sendo possível representar esse retorno por uma tupla: ([Var], [Cmd])
               | '{' ListaCmd '}'                    {([], $2)}

Declaracoes    : Declaracoes Declaracao              {$1 ++ $2} -- Declaracoes e Declaracao sao [Var], retornando [Var]
               | Declaracao                          {$1}

Declaracao     : Tipo ListaId ';'                    {map(\x -> x:#: ($1, 0)) $2} -- Lista de Strings em Lista de Variáveis

ListaId        : ListaId ',' IdVar                   {$1 ++ [$3]}  -- ListaId Retorna uma lista de strings [String]
	             | IdVar                               {[$1]} 

Lit            : Literal                            {$1}

IdVar          : Id                                 {$1}

TConst         : NumInt                             {CInt $1}
               | NumDouble                          {CDouble $1}


Bloco          : '{' ListaCmd '}'                   {$2}

ListaCmd       : ListaCmd Cmd                       {$1 ++ [$2]}
               | Cmd                                {[$1]}

Cmd            : CmdSe                              {$1}
               | CmdEnquanto                        {$1}
               | CmdAtrib                           {$1}
               | CmdEscrita                         {$1}
               | CmdLeitura                         {$1}
               | ChamadaProc                        {$1}
               | Retorno                            {$1}

Retorno        : 'return' Expr ';'                  {Ret (Just $2)}
               | 'return' ';'                       {Ret Nothing}

CmdSe          : 'if' '(' ExprL ')' Bloco              {If $3 $5 []}
               | 'if' '(' ExprL ')' Bloco 'else' Bloco {If $3 $5 $7}

CmdEnquanto    : 'while' '(' ExprL ')' Bloco           {While $3 $5} 

CmdAtrib       : IdVar '=' Expr ';'                    {Atrib $1 $3}

CmdEscrita     : 'print' '(' Expr ')' ';'              {Imp $3}

CmdLeitura     : 'read' '(' IdVar ')' ';'              {Leitura $3}

ChamadaProc    : ChamaFunc ';'                         {$1}

ChamaFunc      : Id '(' ListaParam ')'                 {Proc $1 $3}
               | Id '(' ')'                            {Proc $1 []}

ListaParam     : ListaParam ',' Expr                   {$1 ++ [$3]}
               | Expr                                  {[$1]}


ExprL          : ExprL '||' TermL                    {Or $1 $3}
               | ExprL '&&' TermL                    {And $1 $3}
               | TermL                               {$1}

TermL          : '!' TermL                           {Not $2}
               | ExprR                               {Rel $1}

ExprR          : Expr '==' Expr                      {Req $1 $3}
               | Expr '/=' Expr                      {Rdif $1 $3}
               | Expr '<=' Expr                      {Rle $1 $3}
               | Expr '<' Expr                       {Rlt $1 $3}
               | Expr '>=' Expr                      {Rge $1 $3}
               | Expr '>' Expr                       {Rgt $1 $3}


Expr           : Expr '+' Term                       {Add $1 $3} -- Expr recebe a posição 1 da produção somada à posição 3 da produção (E.val = E1.val + T.val)
               | Expr '-' Term                       {Sub $1 $3} -- Expr recebe a subtração da posição 1 da produção com a posução 3 da produção(E.val = E1.val - T.val) -> '-' aqui é operador binário
               | Term                                {$1}        -- Expr recebe a posição 1 da produção(E.val = T.val)

Term           : Term  '*' Factor                    {Mul $1 $3}
               | Term '/' Factor                     {Div $1 $3}
               | Factor                              {$1}

Factor         : TConst                             {Const $1}
               | '(' Expr ')'                       {$2}
               | '-' Factor	                        {Neg $2} -- '-' como operador unário (tem maior precedência)
               | IdVar                              {IdVar $1}
               | Lit                                {Lit $1}
               | Id '(' ListaParam ')'              {Chamada $1 $3}
               | Id '(' ')'                         {Chamada $1 []}
               | '(' 'int' ')' Factor               {DoubleInt $4}
               | '(' 'double' ')' Factor            {IntDouble $4}



{
parseError :: [Token] -> a
parseError s = error ("Parse error:" ++ show s)

main = do putStr "Expressão:"
          s <- getLine
          case calc(L.alexScanTokens s) of
            Expr v -> print v
            ExprL v -> print v
            -- Vars v -> print v
            -- Bloco v -> print v
            -- BlocoPrinci v -> print v
            -- Vars v -> print v
            -- Bloco v -> print v
            -- BlocoPrinci v -> print v
            -- DeclParams v -> print v
            Funcs v -> print v
            Funcs v -> print v
}
