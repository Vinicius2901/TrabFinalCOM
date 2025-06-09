{-# OPTIONS_GHC -w #-}
module Parser where

import Token
import RI -- import do arquivo .hs para representação intermediária
import qualified Lex as L -- Todas as func desse modulo devem ser usados com o L na frente
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 t31
	| HappyAbsSyn32 t32
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 t34
	| HappyAbsSyn35 t35

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,404) ([0,0,144,62,30,0,9216,0,1920,0,32768,1,0,0,0,384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,144,0,30,0,9216,0,1920,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,32768,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,57728,7,0,0,16384,2050,30720,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8070,0,0,0,2304,0,480,0,16384,2,30720,0,0,144,0,30,0,9216,0,1920,0,0,9,57344,1,0,576,0,120,0,36864,0,7680,0,0,36,32768,7,0,2304,32,480,0,16384,2050,30720,0,0,128,0,0,0,0,0,0,0,32768,17,0,0,0,0,0,0,0,36864,0,7680,0,0,36,32768,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,1792,0,0,0,0,0,0,0,0,0,0,0,6144,0,0,0,0,6,0,0,0,384,0,0,0,24576,0,0,0,0,24,0,0,0,1536,0,0,0,0,6,0,0,0,384,0,0,0,0,0,2048,0,0,64,32,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,18176,541,0,0,0,2048,0,0,0,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,29980,8,0,0,0,0,0,0,0,128,0,0,0,54272,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,32,0,0,0,2048,0,0,0,0,2,0,0,0,128,0,0,0,9216,4096,1920,0,0,8,0,0,0,1600,0,120,0,6144,16384,0,0,0,0,0,0,0,0,0,128,0,16384,2,30720,0,0,144,2,30,0,9216,128,1920,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36,32768,7,0,0,0,0,0,0,0,9684,0,0,0,192,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,6,16,0,0,4096,24,0,0,0,1540,0,0,0,280,0,0,0,16384,0,0,0,0,0,0,0,0,96,0,0,0,0,32769,0,0,0,0,0,0,0,0,0,0,0,16384,2,30720,0,0,0,64,0,0,0,4096,0,0,0,0,2048,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,8660,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,96,0,0,0,0,0,2421,0,0,0,8192,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Inicio","Tipo","DeclFuncs","Func","TipoRet","DeclParams","Param","BlocoPrinc","Declaracoes","Declaracao","ListaId","ExprL","TermL","ExprR","Expr","Term","Factor","Lit","IdVar","TConst","Bloco","ListaCmd","Cmd","Retorno","CmdSe","CmdEnquanto","CmdAtrib","CmdEscrita","CmdLeitura","ChamadaProc","ChamaFunc","ListaParam","'+'","'-'","'*'","'/'","'('","')'","'=='","'/='","'<='","'<'","'>='","'>'","'||'","'&&'","'!'","'int'","'float'","'string'","'void'","';'","','","'if'","'else'","'while'","'='","'print'","'read'","'return'","'{'","'}'","NumDouble","NumInt","Id","Literal","%eof"]
        bit_start = st Prelude.* 70
        bit_end = (st Prelude.+ 1) Prelude.* 70
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..69]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (37) = happyShift action_8
action_0 (40) = happyShift action_9
action_0 (50) = happyShift action_23
action_0 (51) = happyShift action_24
action_0 (52) = happyShift action_25
action_0 (53) = happyShift action_26
action_0 (54) = happyShift action_27
action_0 (66) = happyShift action_10
action_0 (67) = happyShift action_11
action_0 (68) = happyShift action_12
action_0 (69) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_15
action_0 (6) = happyGoto action_16
action_0 (7) = happyGoto action_17
action_0 (8) = happyGoto action_18
action_0 (15) = happyGoto action_19
action_0 (16) = happyGoto action_20
action_0 (17) = happyGoto action_21
action_0 (18) = happyGoto action_22
action_0 (19) = happyGoto action_3
action_0 (20) = happyGoto action_4
action_0 (21) = happyGoto action_5
action_0 (22) = happyGoto action_6
action_0 (23) = happyGoto action_7
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (37) = happyShift action_8
action_1 (40) = happyShift action_9
action_1 (66) = happyShift action_10
action_1 (67) = happyShift action_11
action_1 (68) = happyShift action_12
action_1 (69) = happyShift action_13
action_1 (18) = happyGoto action_2
action_1 (19) = happyGoto action_3
action_1 (20) = happyGoto action_4
action_1 (21) = happyGoto action_5
action_1 (22) = happyGoto action_6
action_1 (23) = happyGoto action_7
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (36) = happyShift action_30
action_2 (37) = happyShift action_31
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (38) = happyShift action_44
action_3 (39) = happyShift action_45
action_3 _ = happyReduce_36

action_4 _ = happyReduce_39

action_5 _ = happyReduce_44

action_6 _ = happyReduce_43

action_7 _ = happyReduce_40

action_8 (37) = happyShift action_8
action_8 (40) = happyShift action_9
action_8 (66) = happyShift action_10
action_8 (67) = happyShift action_11
action_8 (68) = happyShift action_12
action_8 (69) = happyShift action_13
action_8 (20) = happyGoto action_43
action_8 (21) = happyGoto action_5
action_8 (22) = happyGoto action_6
action_8 (23) = happyGoto action_7
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (37) = happyShift action_8
action_9 (40) = happyShift action_9
action_9 (66) = happyShift action_10
action_9 (67) = happyShift action_11
action_9 (68) = happyShift action_12
action_9 (69) = happyShift action_13
action_9 (18) = happyGoto action_42
action_9 (19) = happyGoto action_3
action_9 (20) = happyGoto action_4
action_9 (21) = happyGoto action_5
action_9 (22) = happyGoto action_6
action_9 (23) = happyGoto action_7
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_48

action_11 _ = happyReduce_47

action_12 _ = happyReduce_46

action_13 _ = happyReduce_45

action_14 (70) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_11

action_16 (51) = happyShift action_24
action_16 (52) = happyShift action_25
action_16 (53) = happyShift action_26
action_16 (54) = happyShift action_27
action_16 (5) = happyGoto action_15
action_16 (7) = happyGoto action_41
action_16 (8) = happyGoto action_18
action_16 _ = happyReduce_3

action_17 _ = happyReduce_8

action_18 (68) = happyShift action_40
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (48) = happyShift action_38
action_19 (49) = happyShift action_39
action_19 _ = happyReduce_2

action_20 _ = happyReduce_25

action_21 _ = happyReduce_27

action_22 (36) = happyShift action_30
action_22 (37) = happyShift action_31
action_22 (42) = happyShift action_32
action_22 (43) = happyShift action_33
action_22 (44) = happyShift action_34
action_22 (45) = happyShift action_35
action_22 (46) = happyShift action_36
action_22 (47) = happyShift action_37
action_22 _ = happyReduce_1

action_23 (37) = happyShift action_8
action_23 (40) = happyShift action_9
action_23 (50) = happyShift action_23
action_23 (66) = happyShift action_10
action_23 (67) = happyShift action_11
action_23 (68) = happyShift action_12
action_23 (69) = happyShift action_13
action_23 (16) = happyGoto action_28
action_23 (17) = happyGoto action_21
action_23 (18) = happyGoto action_29
action_23 (19) = happyGoto action_3
action_23 (20) = happyGoto action_4
action_23 (21) = happyGoto action_5
action_23 (22) = happyGoto action_6
action_23 (23) = happyGoto action_7
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_4

action_25 _ = happyReduce_5

action_26 _ = happyReduce_6

action_27 _ = happyReduce_12

action_28 _ = happyReduce_26

action_29 (36) = happyShift action_30
action_29 (37) = happyShift action_31
action_29 (42) = happyShift action_32
action_29 (43) = happyShift action_33
action_29 (44) = happyShift action_34
action_29 (45) = happyShift action_35
action_29 (46) = happyShift action_36
action_29 (47) = happyShift action_37
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (37) = happyShift action_8
action_30 (40) = happyShift action_9
action_30 (66) = happyShift action_10
action_30 (67) = happyShift action_11
action_30 (68) = happyShift action_12
action_30 (69) = happyShift action_13
action_30 (19) = happyGoto action_59
action_30 (20) = happyGoto action_4
action_30 (21) = happyGoto action_5
action_30 (22) = happyGoto action_6
action_30 (23) = happyGoto action_7
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (37) = happyShift action_8
action_31 (40) = happyShift action_9
action_31 (66) = happyShift action_10
action_31 (67) = happyShift action_11
action_31 (68) = happyShift action_12
action_31 (69) = happyShift action_13
action_31 (19) = happyGoto action_58
action_31 (20) = happyGoto action_4
action_31 (21) = happyGoto action_5
action_31 (22) = happyGoto action_6
action_31 (23) = happyGoto action_7
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (37) = happyShift action_8
action_32 (40) = happyShift action_9
action_32 (66) = happyShift action_10
action_32 (67) = happyShift action_11
action_32 (68) = happyShift action_12
action_32 (69) = happyShift action_13
action_32 (18) = happyGoto action_57
action_32 (19) = happyGoto action_3
action_32 (20) = happyGoto action_4
action_32 (21) = happyGoto action_5
action_32 (22) = happyGoto action_6
action_32 (23) = happyGoto action_7
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (37) = happyShift action_8
action_33 (40) = happyShift action_9
action_33 (66) = happyShift action_10
action_33 (67) = happyShift action_11
action_33 (68) = happyShift action_12
action_33 (69) = happyShift action_13
action_33 (18) = happyGoto action_56
action_33 (19) = happyGoto action_3
action_33 (20) = happyGoto action_4
action_33 (21) = happyGoto action_5
action_33 (22) = happyGoto action_6
action_33 (23) = happyGoto action_7
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (37) = happyShift action_8
action_34 (40) = happyShift action_9
action_34 (66) = happyShift action_10
action_34 (67) = happyShift action_11
action_34 (68) = happyShift action_12
action_34 (69) = happyShift action_13
action_34 (18) = happyGoto action_55
action_34 (19) = happyGoto action_3
action_34 (20) = happyGoto action_4
action_34 (21) = happyGoto action_5
action_34 (22) = happyGoto action_6
action_34 (23) = happyGoto action_7
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (37) = happyShift action_8
action_35 (40) = happyShift action_9
action_35 (66) = happyShift action_10
action_35 (67) = happyShift action_11
action_35 (68) = happyShift action_12
action_35 (69) = happyShift action_13
action_35 (18) = happyGoto action_54
action_35 (19) = happyGoto action_3
action_35 (20) = happyGoto action_4
action_35 (21) = happyGoto action_5
action_35 (22) = happyGoto action_6
action_35 (23) = happyGoto action_7
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (37) = happyShift action_8
action_36 (40) = happyShift action_9
action_36 (66) = happyShift action_10
action_36 (67) = happyShift action_11
action_36 (68) = happyShift action_12
action_36 (69) = happyShift action_13
action_36 (18) = happyGoto action_53
action_36 (19) = happyGoto action_3
action_36 (20) = happyGoto action_4
action_36 (21) = happyGoto action_5
action_36 (22) = happyGoto action_6
action_36 (23) = happyGoto action_7
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (37) = happyShift action_8
action_37 (40) = happyShift action_9
action_37 (66) = happyShift action_10
action_37 (67) = happyShift action_11
action_37 (68) = happyShift action_12
action_37 (69) = happyShift action_13
action_37 (18) = happyGoto action_52
action_37 (19) = happyGoto action_3
action_37 (20) = happyGoto action_4
action_37 (21) = happyGoto action_5
action_37 (22) = happyGoto action_6
action_37 (23) = happyGoto action_7
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (37) = happyShift action_8
action_38 (40) = happyShift action_9
action_38 (50) = happyShift action_23
action_38 (66) = happyShift action_10
action_38 (67) = happyShift action_11
action_38 (68) = happyShift action_12
action_38 (69) = happyShift action_13
action_38 (16) = happyGoto action_51
action_38 (17) = happyGoto action_21
action_38 (18) = happyGoto action_29
action_38 (19) = happyGoto action_3
action_38 (20) = happyGoto action_4
action_38 (21) = happyGoto action_5
action_38 (22) = happyGoto action_6
action_38 (23) = happyGoto action_7
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (37) = happyShift action_8
action_39 (40) = happyShift action_9
action_39 (50) = happyShift action_23
action_39 (66) = happyShift action_10
action_39 (67) = happyShift action_11
action_39 (68) = happyShift action_12
action_39 (69) = happyShift action_13
action_39 (16) = happyGoto action_50
action_39 (17) = happyGoto action_21
action_39 (18) = happyGoto action_29
action_39 (19) = happyGoto action_3
action_39 (20) = happyGoto action_4
action_39 (21) = happyGoto action_5
action_39 (22) = happyGoto action_6
action_39 (23) = happyGoto action_7
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (40) = happyShift action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_7

action_42 (36) = happyShift action_30
action_42 (37) = happyShift action_31
action_42 (41) = happyShift action_48
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_42

action_44 (37) = happyShift action_8
action_44 (40) = happyShift action_9
action_44 (66) = happyShift action_10
action_44 (67) = happyShift action_11
action_44 (68) = happyShift action_12
action_44 (69) = happyShift action_13
action_44 (20) = happyGoto action_47
action_44 (21) = happyGoto action_5
action_44 (22) = happyGoto action_6
action_44 (23) = happyGoto action_7
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (37) = happyShift action_8
action_45 (40) = happyShift action_9
action_45 (66) = happyShift action_10
action_45 (67) = happyShift action_11
action_45 (68) = happyShift action_12
action_45 (69) = happyShift action_13
action_45 (20) = happyGoto action_46
action_45 (21) = happyGoto action_5
action_45 (22) = happyGoto action_6
action_45 (23) = happyGoto action_7
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_38

action_47 _ = happyReduce_37

action_48 _ = happyReduce_41

action_49 (41) = happyShift action_63
action_49 (51) = happyShift action_24
action_49 (52) = happyShift action_25
action_49 (53) = happyShift action_26
action_49 (5) = happyGoto action_60
action_49 (9) = happyGoto action_61
action_49 (10) = happyGoto action_62
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_24

action_51 _ = happyReduce_23

action_52 (36) = happyShift action_30
action_52 (37) = happyShift action_31
action_52 _ = happyReduce_33

action_53 (36) = happyShift action_30
action_53 (37) = happyShift action_31
action_53 _ = happyReduce_32

action_54 (36) = happyShift action_30
action_54 (37) = happyShift action_31
action_54 _ = happyReduce_31

action_55 (36) = happyShift action_30
action_55 (37) = happyShift action_31
action_55 _ = happyReduce_30

action_56 (36) = happyShift action_30
action_56 (37) = happyShift action_31
action_56 _ = happyReduce_29

action_57 (36) = happyShift action_30
action_57 (37) = happyShift action_31
action_57 _ = happyReduce_28

action_58 (38) = happyShift action_44
action_58 (39) = happyShift action_45
action_58 _ = happyReduce_35

action_59 (38) = happyShift action_44
action_59 (39) = happyShift action_45
action_59 _ = happyReduce_34

action_60 (68) = happyShift action_12
action_60 (22) = happyGoto action_68
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (41) = happyShift action_66
action_61 (56) = happyShift action_67
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_14

action_63 (64) = happyShift action_65
action_63 (11) = happyGoto action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_10

action_65 (51) = happyShift action_24
action_65 (52) = happyShift action_25
action_65 (53) = happyShift action_26
action_65 (57) = happyShift action_85
action_65 (59) = happyShift action_86
action_65 (61) = happyShift action_87
action_65 (62) = happyShift action_88
action_65 (63) = happyShift action_89
action_65 (68) = happyShift action_90
action_65 (5) = happyGoto action_71
action_65 (12) = happyGoto action_72
action_65 (13) = happyGoto action_73
action_65 (22) = happyGoto action_74
action_65 (25) = happyGoto action_75
action_65 (26) = happyGoto action_76
action_65 (27) = happyGoto action_77
action_65 (28) = happyGoto action_78
action_65 (29) = happyGoto action_79
action_65 (30) = happyGoto action_80
action_65 (31) = happyGoto action_81
action_65 (32) = happyGoto action_82
action_65 (33) = happyGoto action_83
action_65 (34) = happyGoto action_84
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (64) = happyShift action_65
action_66 (11) = happyGoto action_70
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (51) = happyShift action_24
action_67 (52) = happyShift action_25
action_67 (53) = happyShift action_26
action_67 (5) = happyGoto action_60
action_67 (10) = happyGoto action_69
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_15

action_69 _ = happyReduce_13

action_70 _ = happyReduce_9

action_71 (68) = happyShift action_12
action_71 (14) = happyGoto action_104
action_71 (22) = happyGoto action_105
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (51) = happyShift action_24
action_72 (52) = happyShift action_25
action_72 (53) = happyShift action_26
action_72 (57) = happyShift action_85
action_72 (59) = happyShift action_86
action_72 (61) = happyShift action_87
action_72 (62) = happyShift action_88
action_72 (63) = happyShift action_89
action_72 (68) = happyShift action_90
action_72 (5) = happyGoto action_71
action_72 (13) = happyGoto action_102
action_72 (22) = happyGoto action_74
action_72 (25) = happyGoto action_103
action_72 (26) = happyGoto action_76
action_72 (27) = happyGoto action_77
action_72 (28) = happyGoto action_78
action_72 (29) = happyGoto action_79
action_72 (30) = happyGoto action_80
action_72 (31) = happyGoto action_81
action_72 (32) = happyGoto action_82
action_72 (33) = happyGoto action_83
action_72 (34) = happyGoto action_84
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_19

action_74 (60) = happyShift action_101
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (57) = happyShift action_85
action_75 (59) = happyShift action_86
action_75 (61) = happyShift action_87
action_75 (62) = happyShift action_88
action_75 (63) = happyShift action_89
action_75 (65) = happyShift action_100
action_75 (68) = happyShift action_90
action_75 (22) = happyGoto action_74
action_75 (26) = happyGoto action_99
action_75 (27) = happyGoto action_77
action_75 (28) = happyGoto action_78
action_75 (29) = happyGoto action_79
action_75 (30) = happyGoto action_80
action_75 (31) = happyGoto action_81
action_75 (32) = happyGoto action_82
action_75 (33) = happyGoto action_83
action_75 (34) = happyGoto action_84
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_51

action_77 _ = happyReduce_58

action_78 _ = happyReduce_52

action_79 _ = happyReduce_53

action_80 _ = happyReduce_54

action_81 _ = happyReduce_55

action_82 _ = happyReduce_56

action_83 _ = happyReduce_57

action_84 (55) = happyShift action_98
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (40) = happyShift action_97
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (40) = happyShift action_96
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (40) = happyShift action_95
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (40) = happyShift action_94
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (37) = happyShift action_8
action_89 (40) = happyShift action_9
action_89 (55) = happyShift action_93
action_89 (66) = happyShift action_10
action_89 (67) = happyShift action_11
action_89 (68) = happyShift action_12
action_89 (69) = happyShift action_13
action_89 (18) = happyGoto action_92
action_89 (19) = happyGoto action_3
action_89 (20) = happyGoto action_4
action_89 (21) = happyGoto action_5
action_89 (22) = happyGoto action_6
action_89 (23) = happyGoto action_7
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (40) = happyShift action_91
action_90 _ = happyReduce_46

action_91 (37) = happyShift action_8
action_91 (40) = happyShift action_9
action_91 (41) = happyShift action_117
action_91 (66) = happyShift action_10
action_91 (67) = happyShift action_11
action_91 (68) = happyShift action_12
action_91 (69) = happyShift action_13
action_91 (18) = happyGoto action_115
action_91 (19) = happyGoto action_3
action_91 (20) = happyGoto action_4
action_91 (21) = happyGoto action_5
action_91 (22) = happyGoto action_6
action_91 (23) = happyGoto action_7
action_91 (35) = happyGoto action_116
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (36) = happyShift action_30
action_92 (37) = happyShift action_31
action_92 (55) = happyShift action_114
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_60

action_94 (68) = happyShift action_12
action_94 (22) = happyGoto action_113
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (37) = happyShift action_8
action_95 (40) = happyShift action_9
action_95 (66) = happyShift action_10
action_95 (67) = happyShift action_11
action_95 (68) = happyShift action_12
action_95 (69) = happyShift action_13
action_95 (18) = happyGoto action_112
action_95 (19) = happyGoto action_3
action_95 (20) = happyGoto action_4
action_95 (21) = happyGoto action_5
action_95 (22) = happyGoto action_6
action_95 (23) = happyGoto action_7
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (37) = happyShift action_8
action_96 (40) = happyShift action_9
action_96 (50) = happyShift action_23
action_96 (66) = happyShift action_10
action_96 (67) = happyShift action_11
action_96 (68) = happyShift action_12
action_96 (69) = happyShift action_13
action_96 (15) = happyGoto action_111
action_96 (16) = happyGoto action_20
action_96 (17) = happyGoto action_21
action_96 (18) = happyGoto action_29
action_96 (19) = happyGoto action_3
action_96 (20) = happyGoto action_4
action_96 (21) = happyGoto action_5
action_96 (22) = happyGoto action_6
action_96 (23) = happyGoto action_7
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (37) = happyShift action_8
action_97 (40) = happyShift action_9
action_97 (50) = happyShift action_23
action_97 (66) = happyShift action_10
action_97 (67) = happyShift action_11
action_97 (68) = happyShift action_12
action_97 (69) = happyShift action_13
action_97 (15) = happyGoto action_110
action_97 (16) = happyGoto action_20
action_97 (17) = happyGoto action_21
action_97 (18) = happyGoto action_29
action_97 (19) = happyGoto action_3
action_97 (20) = happyGoto action_4
action_97 (21) = happyGoto action_5
action_97 (22) = happyGoto action_6
action_97 (23) = happyGoto action_7
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_67

action_99 _ = happyReduce_50

action_100 _ = happyReduce_17

action_101 (37) = happyShift action_8
action_101 (40) = happyShift action_9
action_101 (66) = happyShift action_10
action_101 (67) = happyShift action_11
action_101 (68) = happyShift action_12
action_101 (69) = happyShift action_13
action_101 (18) = happyGoto action_109
action_101 (19) = happyGoto action_3
action_101 (20) = happyGoto action_4
action_101 (21) = happyGoto action_5
action_101 (22) = happyGoto action_6
action_101 (23) = happyGoto action_7
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_18

action_103 (57) = happyShift action_85
action_103 (59) = happyShift action_86
action_103 (61) = happyShift action_87
action_103 (62) = happyShift action_88
action_103 (63) = happyShift action_89
action_103 (65) = happyShift action_108
action_103 (68) = happyShift action_90
action_103 (22) = happyGoto action_74
action_103 (26) = happyGoto action_99
action_103 (27) = happyGoto action_77
action_103 (28) = happyGoto action_78
action_103 (29) = happyGoto action_79
action_103 (30) = happyGoto action_80
action_103 (31) = happyGoto action_81
action_103 (32) = happyGoto action_82
action_103 (33) = happyGoto action_83
action_103 (34) = happyGoto action_84
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (55) = happyShift action_106
action_104 (56) = happyShift action_107
action_104 _ = happyFail (happyExpListPerState 104)

action_105 _ = happyReduce_22

action_106 _ = happyReduce_20

action_107 (68) = happyShift action_12
action_107 (22) = happyGoto action_125
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_16

action_109 (36) = happyShift action_30
action_109 (37) = happyShift action_31
action_109 (55) = happyShift action_124
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (41) = happyShift action_123
action_110 (48) = happyShift action_38
action_110 (49) = happyShift action_39
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (41) = happyShift action_122
action_111 (48) = happyShift action_38
action_111 (49) = happyShift action_39
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (36) = happyShift action_30
action_112 (37) = happyShift action_31
action_112 (41) = happyShift action_121
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (41) = happyShift action_120
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_59

action_115 (36) = happyShift action_30
action_115 (37) = happyShift action_31
action_115 _ = happyReduce_71

action_116 (41) = happyShift action_118
action_116 (56) = happyShift action_119
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_69

action_118 _ = happyReduce_68

action_119 (37) = happyShift action_8
action_119 (40) = happyShift action_9
action_119 (66) = happyShift action_10
action_119 (67) = happyShift action_11
action_119 (68) = happyShift action_12
action_119 (69) = happyShift action_13
action_119 (18) = happyGoto action_131
action_119 (19) = happyGoto action_3
action_119 (20) = happyGoto action_4
action_119 (21) = happyGoto action_5
action_119 (22) = happyGoto action_6
action_119 (23) = happyGoto action_7
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (55) = happyShift action_130
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (55) = happyShift action_129
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (64) = happyShift action_127
action_122 (24) = happyGoto action_128
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (64) = happyShift action_127
action_123 (24) = happyGoto action_126
action_123 _ = happyFail (happyExpListPerState 123)

action_124 _ = happyReduce_64

action_125 _ = happyReduce_21

action_126 (58) = happyShift action_133
action_126 _ = happyReduce_61

action_127 (57) = happyShift action_85
action_127 (59) = happyShift action_86
action_127 (61) = happyShift action_87
action_127 (62) = happyShift action_88
action_127 (63) = happyShift action_89
action_127 (68) = happyShift action_90
action_127 (22) = happyGoto action_74
action_127 (25) = happyGoto action_132
action_127 (26) = happyGoto action_76
action_127 (27) = happyGoto action_77
action_127 (28) = happyGoto action_78
action_127 (29) = happyGoto action_79
action_127 (30) = happyGoto action_80
action_127 (31) = happyGoto action_81
action_127 (32) = happyGoto action_82
action_127 (33) = happyGoto action_83
action_127 (34) = happyGoto action_84
action_127 _ = happyFail (happyExpListPerState 127)

action_128 _ = happyReduce_63

action_129 _ = happyReduce_65

action_130 _ = happyReduce_66

action_131 (36) = happyShift action_30
action_131 (37) = happyShift action_31
action_131 _ = happyReduce_70

action_132 (57) = happyShift action_85
action_132 (59) = happyShift action_86
action_132 (61) = happyShift action_87
action_132 (62) = happyShift action_88
action_132 (63) = happyShift action_89
action_132 (65) = happyShift action_135
action_132 (68) = happyShift action_90
action_132 (22) = happyGoto action_74
action_132 (26) = happyGoto action_99
action_132 (27) = happyGoto action_77
action_132 (28) = happyGoto action_78
action_132 (29) = happyGoto action_79
action_132 (30) = happyGoto action_80
action_132 (31) = happyGoto action_81
action_132 (32) = happyGoto action_82
action_132 (33) = happyGoto action_83
action_132 (34) = happyGoto action_84
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (64) = happyShift action_127
action_133 (24) = happyGoto action_134
action_133 _ = happyFail (happyExpListPerState 133)

action_134 _ = happyReduce_62

action_135 _ = happyReduce_49

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn4
		 (Expr happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn4
		 (ExprL happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (Funcs happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn5
		 (TInt
	)

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn5
		 (TDouble
	)

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn5
		 (TString
	)

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happyReduce 6 7 happyReduction_9
happyReduction_9 ((HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_2 :->: (happy_var_4, happy_var_1),(happy_var_2, fst(happy_var_6), snd(happy_var_6)))
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 5 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn11  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_2 :->: ([], happy_var_1),(happy_var_2, fst(happy_var_5), snd(happy_var_5)))
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn8
		 (TVoid
	)

happyReduce_13 = happySpecReduce_3  9 happyReduction_13
happyReduction_13 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  9 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  10 happyReduction_15
happyReduction_15 (HappyAbsSyn22  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_2 :#: (happy_var_1, 0)
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 11 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_3) `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 ((happy_var_2, happy_var_3)
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  11 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (([], happy_var_2)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  12 happyReduction_18
happyReduction_18 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  12 happyReduction_19
happyReduction_19 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  13 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (map(\x -> x:#: (happy_var_1, 0)) happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  14 happyReduction_21
happyReduction_21 (HappyAbsSyn22  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  14 happyReduction_22
happyReduction_22 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  15 happyReduction_23
happyReduction_23 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Or happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  15 happyReduction_24
happyReduction_24 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (And happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  15 happyReduction_25
happyReduction_25 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  16 happyReduction_26
happyReduction_26 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Not happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  16 happyReduction_27
happyReduction_27 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Rel happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  17 happyReduction_28
happyReduction_28 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Req happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  17 happyReduction_29
happyReduction_29 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rdif happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  17 happyReduction_30
happyReduction_30 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rle happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  17 happyReduction_31
happyReduction_31 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rlt happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  17 happyReduction_32
happyReduction_32 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rge happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  17 happyReduction_33
happyReduction_33 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rgt happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  18 happyReduction_34
happyReduction_34 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Add happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  18 happyReduction_35
happyReduction_35 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  18 happyReduction_36
happyReduction_36 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  19 happyReduction_37
happyReduction_37 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  19 happyReduction_38
happyReduction_38 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (Div happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  19 happyReduction_39
happyReduction_39 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  20 happyReduction_40
happyReduction_40 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn20
		 (Const happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  20 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  20 happyReduction_42
happyReduction_42 (HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (Neg happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  20 happyReduction_43
happyReduction_43 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 (IdVar happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  20 happyReduction_44
happyReduction_44 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 (Lit happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  21 happyReduction_45
happyReduction_45 (HappyTerminal (LIT happy_var_1))
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  22 happyReduction_46
happyReduction_46 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn22
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  23 happyReduction_47
happyReduction_47 (HappyTerminal (NUMINT happy_var_1))
	 =  HappyAbsSyn23
		 (CInt happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  23 happyReduction_48
happyReduction_48 (HappyTerminal (NUMDOUBLE happy_var_1))
	 =  HappyAbsSyn23
		 (CDouble happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  24 happyReduction_49
happyReduction_49 _
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn24
		 (happy_var_2
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  25 happyReduction_50
happyReduction_50 (HappyAbsSyn26  happy_var_2)
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  25 happyReduction_51
happyReduction_51 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn25
		 ([happy_var_1]
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  26 happyReduction_52
happyReduction_52 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  26 happyReduction_53
happyReduction_53 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  26 happyReduction_54
happyReduction_54 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  26 happyReduction_55
happyReduction_55 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  26 happyReduction_56
happyReduction_56 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  26 happyReduction_57
happyReduction_57 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  26 happyReduction_58
happyReduction_58 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  27 happyReduction_59
happyReduction_59 _
	(HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn27
		 (Ret (Just happy_var_2)
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_2  27 happyReduction_60
happyReduction_60 _
	_
	 =  HappyAbsSyn27
		 (Ret Nothing
	)

happyReduce_61 = happyReduce 5 28 happyReduction_61
happyReduction_61 ((HappyAbsSyn24  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (If happy_var_3 happy_var_5 []
	) `HappyStk` happyRest

happyReduce_62 = happyReduce 7 28 happyReduction_62
happyReduction_62 ((HappyAbsSyn24  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (If happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_63 = happyReduce 5 29 happyReduction_63
happyReduction_63 ((HappyAbsSyn24  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn29
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_64 = happyReduce 4 30 happyReduction_64
happyReduction_64 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn30
		 (Atrib happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_65 = happyReduce 5 31 happyReduction_65
happyReduction_65 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (Imp happy_var_3
	) `HappyStk` happyRest

happyReduce_66 = happyReduce 5 32 happyReduction_66
happyReduction_66 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (Leitura happy_var_3
	) `HappyStk` happyRest

happyReduce_67 = happySpecReduce_2  33 happyReduction_67
happyReduction_67 _
	(HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_67 _ _  = notHappyAtAll 

happyReduce_68 = happyReduce 4 34 happyReduction_68
happyReduction_68 (_ `HappyStk`
	(HappyAbsSyn35  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn34
		 (Proc happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_69 = happySpecReduce_3  34 happyReduction_69
happyReduction_69 _
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn34
		 (Proc happy_var_1 []
	)
happyReduction_69 _ _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_3  35 happyReduction_70
happyReduction_70 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn35
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  35 happyReduction_71
happyReduction_71 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1]
	)
happyReduction_71 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 70 70 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ADD -> cont 36;
	SUB -> cont 37;
	MUL -> cont 38;
	DIV -> cont 39;
	LPAR -> cont 40;
	RPAR -> cont 41;
	REQ -> cont 42;
	RNE -> cont 43;
	RLE -> cont 44;
	RLT -> cont 45;
	RGE -> cont 46;
	RGT -> cont 47;
	OR -> cont 48;
	AND -> cont 49;
	NOT -> cont 50;
	DECINT -> cont 51;
	DECFLOAT -> cont 52;
	DECSTRING -> cont 53;
	DECVOID -> cont 54;
	FIMLINHA -> cont 55;
	VIRGULA -> cont 56;
	IF -> cont 57;
	ELSE -> cont 58;
	WHILE -> cont 59;
	ATRIB -> cont 60;
	ESCR -> cont 61;
	LEIT -> cont 62;
	RET -> cont 63;
	LBRACK -> cont 64;
	RBRACK -> cont 65;
	NUMDOUBLE happy_dollar_dollar -> cont 66;
	NUMINT happy_dollar_dollar -> cont 67;
	ID happy_dollar_dollar -> cont 68;
	LIT happy_dollar_dollar -> cont 69;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 70 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
calc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
            -- DeclParams v -> print v
            Funcs v -> print v
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
