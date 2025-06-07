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
happyExpList = Happy_Data_Array.listArray (0,417) ([0,0,144,32830,30,0,9216,0,1920,0,32768,1,0,0,0,384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,144,0,30,0,9216,0,1920,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,32768,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,57728,7,0,0,0,0,0,0,0,144,2,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7488,2,0,0,32768,0,0,0,0,9684,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,8192,0,0,0,0,8,0,0,0,512,0,0,0,32768,0,0,0,0,36,32784,7,0,2048,0,0,0,0,0,0,0,0,32280,0,0,0,9216,0,1920,0,0,9,57344,1,0,576,0,120,0,36864,0,7680,0,0,36,32768,7,0,2304,0,480,0,16384,2,30720,0,0,144,0,30,0,9216,128,1920,0,0,8201,57344,1,0,512,0,0,0,0,0,0,0,0,70,0,0,0,0,0,0,0,16384,2,30720,0,0,144,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7169,0,0,0,0,0,0,0,0,0,0,0,24576,0,0,0,0,24,0,0,0,1536,0,0,0,32768,1,0,0,0,96,0,0,0,6144,0,0,0,0,24,0,0,0,1536,0,0,0,16384,6,30720,0,0,24,64,0,0,0,0,0,0,0,0,32768,0,0,576,0,120,0,36864,512,7680,0,0,32804,32768,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9216,0,1920,0,32768,1,4,0,0,1024,6,0,0,0,385,0,0,0,70,0,0,0,4096,0,0,0,0,0,0,0,0,24,0,0,0,16384,8192,0,0,0,0,0,0,0,0,0,32,0,0,32769,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,29980,8,0,0,0,32,0,0,49152,1,0,0,0,0,0,0,0,0,0,0,0,36,32768,7,0,0,1024,0,0,0,0,1,0,0,0,32768,0,0,0,0,32,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24576,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,54384,33,0,0,0,0,0,0,0,23872,2,0,0,0,0,0,0,0,0,0,0,0,29952,9,0,0,12288,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0
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
action_0 (50) = happyShift action_24
action_0 (51) = happyShift action_25
action_0 (52) = happyShift action_26
action_0 (53) = happyShift action_27
action_0 (54) = happyShift action_28
action_0 (64) = happyShift action_29
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
action_0 (24) = happyGoto action_23
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

action_2 (36) = happyShift action_49
action_2 (37) = happyShift action_50
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (38) = happyShift action_63
action_3 (39) = happyShift action_64
action_3 _ = happyReduce_37

action_4 _ = happyReduce_40

action_5 _ = happyReduce_45

action_6 _ = happyReduce_44

action_7 _ = happyReduce_41

action_8 (37) = happyShift action_8
action_8 (40) = happyShift action_9
action_8 (66) = happyShift action_10
action_8 (67) = happyShift action_11
action_8 (68) = happyShift action_12
action_8 (69) = happyShift action_13
action_8 (20) = happyGoto action_62
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
action_9 (18) = happyGoto action_61
action_9 (19) = happyGoto action_3
action_9 (20) = happyGoto action_4
action_9 (21) = happyGoto action_5
action_9 (22) = happyGoto action_6
action_9 (23) = happyGoto action_7
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_49

action_11 _ = happyReduce_48

action_12 _ = happyReduce_47

action_13 _ = happyReduce_46

action_14 (70) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_12

action_16 (51) = happyShift action_25
action_16 (52) = happyShift action_26
action_16 (53) = happyShift action_27
action_16 (54) = happyShift action_28
action_16 (5) = happyGoto action_15
action_16 (7) = happyGoto action_60
action_16 (8) = happyGoto action_18
action_16 _ = happyReduce_4

action_17 _ = happyReduce_9

action_18 (68) = happyShift action_59
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (48) = happyShift action_57
action_19 (49) = happyShift action_58
action_19 _ = happyReduce_2

action_20 _ = happyReduce_26

action_21 _ = happyReduce_28

action_22 (36) = happyShift action_49
action_22 (37) = happyShift action_50
action_22 (42) = happyShift action_51
action_22 (43) = happyShift action_52
action_22 (44) = happyShift action_53
action_22 (45) = happyShift action_54
action_22 (46) = happyShift action_55
action_22 (47) = happyShift action_56
action_22 _ = happyReduce_1

action_23 _ = happyReduce_3

action_24 (37) = happyShift action_8
action_24 (40) = happyShift action_9
action_24 (50) = happyShift action_24
action_24 (66) = happyShift action_10
action_24 (67) = happyShift action_11
action_24 (68) = happyShift action_12
action_24 (69) = happyShift action_13
action_24 (16) = happyGoto action_47
action_24 (17) = happyGoto action_21
action_24 (18) = happyGoto action_48
action_24 (19) = happyGoto action_3
action_24 (20) = happyGoto action_4
action_24 (21) = happyGoto action_5
action_24 (22) = happyGoto action_6
action_24 (23) = happyGoto action_7
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_5

action_26 _ = happyReduce_6

action_27 _ = happyReduce_7

action_28 _ = happyReduce_13

action_29 (57) = happyShift action_41
action_29 (59) = happyShift action_42
action_29 (61) = happyShift action_43
action_29 (62) = happyShift action_44
action_29 (63) = happyShift action_45
action_29 (68) = happyShift action_46
action_29 (22) = happyGoto action_30
action_29 (25) = happyGoto action_31
action_29 (26) = happyGoto action_32
action_29 (27) = happyGoto action_33
action_29 (28) = happyGoto action_34
action_29 (29) = happyGoto action_35
action_29 (30) = happyGoto action_36
action_29 (31) = happyGoto action_37
action_29 (32) = happyGoto action_38
action_29 (33) = happyGoto action_39
action_29 (34) = happyGoto action_40
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (60) = happyShift action_89
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (57) = happyShift action_41
action_31 (59) = happyShift action_42
action_31 (61) = happyShift action_43
action_31 (62) = happyShift action_44
action_31 (63) = happyShift action_45
action_31 (65) = happyShift action_88
action_31 (68) = happyShift action_46
action_31 (22) = happyGoto action_30
action_31 (26) = happyGoto action_87
action_31 (27) = happyGoto action_33
action_31 (28) = happyGoto action_34
action_31 (29) = happyGoto action_35
action_31 (30) = happyGoto action_36
action_31 (31) = happyGoto action_37
action_31 (32) = happyGoto action_38
action_31 (33) = happyGoto action_39
action_31 (34) = happyGoto action_40
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_52

action_33 _ = happyReduce_59

action_34 _ = happyReduce_53

action_35 _ = happyReduce_54

action_36 _ = happyReduce_55

action_37 _ = happyReduce_56

action_38 _ = happyReduce_57

action_39 _ = happyReduce_58

action_40 (55) = happyShift action_86
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (40) = happyShift action_85
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (40) = happyShift action_84
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (40) = happyShift action_83
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (40) = happyShift action_82
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (37) = happyShift action_8
action_45 (40) = happyShift action_9
action_45 (55) = happyShift action_81
action_45 (66) = happyShift action_10
action_45 (67) = happyShift action_11
action_45 (68) = happyShift action_12
action_45 (69) = happyShift action_13
action_45 (18) = happyGoto action_80
action_45 (19) = happyGoto action_3
action_45 (20) = happyGoto action_4
action_45 (21) = happyGoto action_5
action_45 (22) = happyGoto action_6
action_45 (23) = happyGoto action_7
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (40) = happyShift action_79
action_46 _ = happyReduce_47

action_47 _ = happyReduce_27

action_48 (36) = happyShift action_49
action_48 (37) = happyShift action_50
action_48 (42) = happyShift action_51
action_48 (43) = happyShift action_52
action_48 (44) = happyShift action_53
action_48 (45) = happyShift action_54
action_48 (46) = happyShift action_55
action_48 (47) = happyShift action_56
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (37) = happyShift action_8
action_49 (40) = happyShift action_9
action_49 (66) = happyShift action_10
action_49 (67) = happyShift action_11
action_49 (68) = happyShift action_12
action_49 (69) = happyShift action_13
action_49 (19) = happyGoto action_78
action_49 (20) = happyGoto action_4
action_49 (21) = happyGoto action_5
action_49 (22) = happyGoto action_6
action_49 (23) = happyGoto action_7
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (37) = happyShift action_8
action_50 (40) = happyShift action_9
action_50 (66) = happyShift action_10
action_50 (67) = happyShift action_11
action_50 (68) = happyShift action_12
action_50 (69) = happyShift action_13
action_50 (19) = happyGoto action_77
action_50 (20) = happyGoto action_4
action_50 (21) = happyGoto action_5
action_50 (22) = happyGoto action_6
action_50 (23) = happyGoto action_7
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (37) = happyShift action_8
action_51 (40) = happyShift action_9
action_51 (66) = happyShift action_10
action_51 (67) = happyShift action_11
action_51 (68) = happyShift action_12
action_51 (69) = happyShift action_13
action_51 (18) = happyGoto action_76
action_51 (19) = happyGoto action_3
action_51 (20) = happyGoto action_4
action_51 (21) = happyGoto action_5
action_51 (22) = happyGoto action_6
action_51 (23) = happyGoto action_7
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (37) = happyShift action_8
action_52 (40) = happyShift action_9
action_52 (66) = happyShift action_10
action_52 (67) = happyShift action_11
action_52 (68) = happyShift action_12
action_52 (69) = happyShift action_13
action_52 (18) = happyGoto action_75
action_52 (19) = happyGoto action_3
action_52 (20) = happyGoto action_4
action_52 (21) = happyGoto action_5
action_52 (22) = happyGoto action_6
action_52 (23) = happyGoto action_7
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (37) = happyShift action_8
action_53 (40) = happyShift action_9
action_53 (66) = happyShift action_10
action_53 (67) = happyShift action_11
action_53 (68) = happyShift action_12
action_53 (69) = happyShift action_13
action_53 (18) = happyGoto action_74
action_53 (19) = happyGoto action_3
action_53 (20) = happyGoto action_4
action_53 (21) = happyGoto action_5
action_53 (22) = happyGoto action_6
action_53 (23) = happyGoto action_7
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (37) = happyShift action_8
action_54 (40) = happyShift action_9
action_54 (66) = happyShift action_10
action_54 (67) = happyShift action_11
action_54 (68) = happyShift action_12
action_54 (69) = happyShift action_13
action_54 (18) = happyGoto action_73
action_54 (19) = happyGoto action_3
action_54 (20) = happyGoto action_4
action_54 (21) = happyGoto action_5
action_54 (22) = happyGoto action_6
action_54 (23) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (37) = happyShift action_8
action_55 (40) = happyShift action_9
action_55 (66) = happyShift action_10
action_55 (67) = happyShift action_11
action_55 (68) = happyShift action_12
action_55 (69) = happyShift action_13
action_55 (18) = happyGoto action_72
action_55 (19) = happyGoto action_3
action_55 (20) = happyGoto action_4
action_55 (21) = happyGoto action_5
action_55 (22) = happyGoto action_6
action_55 (23) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (37) = happyShift action_8
action_56 (40) = happyShift action_9
action_56 (66) = happyShift action_10
action_56 (67) = happyShift action_11
action_56 (68) = happyShift action_12
action_56 (69) = happyShift action_13
action_56 (18) = happyGoto action_71
action_56 (19) = happyGoto action_3
action_56 (20) = happyGoto action_4
action_56 (21) = happyGoto action_5
action_56 (22) = happyGoto action_6
action_56 (23) = happyGoto action_7
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (37) = happyShift action_8
action_57 (40) = happyShift action_9
action_57 (50) = happyShift action_24
action_57 (66) = happyShift action_10
action_57 (67) = happyShift action_11
action_57 (68) = happyShift action_12
action_57 (69) = happyShift action_13
action_57 (16) = happyGoto action_70
action_57 (17) = happyGoto action_21
action_57 (18) = happyGoto action_48
action_57 (19) = happyGoto action_3
action_57 (20) = happyGoto action_4
action_57 (21) = happyGoto action_5
action_57 (22) = happyGoto action_6
action_57 (23) = happyGoto action_7
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (37) = happyShift action_8
action_58 (40) = happyShift action_9
action_58 (50) = happyShift action_24
action_58 (66) = happyShift action_10
action_58 (67) = happyShift action_11
action_58 (68) = happyShift action_12
action_58 (69) = happyShift action_13
action_58 (16) = happyGoto action_69
action_58 (17) = happyGoto action_21
action_58 (18) = happyGoto action_48
action_58 (19) = happyGoto action_3
action_58 (20) = happyGoto action_4
action_58 (21) = happyGoto action_5
action_58 (22) = happyGoto action_6
action_58 (23) = happyGoto action_7
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (40) = happyShift action_68
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_8

action_61 (36) = happyShift action_49
action_61 (37) = happyShift action_50
action_61 (41) = happyShift action_67
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_43

action_63 (37) = happyShift action_8
action_63 (40) = happyShift action_9
action_63 (66) = happyShift action_10
action_63 (67) = happyShift action_11
action_63 (68) = happyShift action_12
action_63 (69) = happyShift action_13
action_63 (20) = happyGoto action_66
action_63 (21) = happyGoto action_5
action_63 (22) = happyGoto action_6
action_63 (23) = happyGoto action_7
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (37) = happyShift action_8
action_64 (40) = happyShift action_9
action_64 (66) = happyShift action_10
action_64 (67) = happyShift action_11
action_64 (68) = happyShift action_12
action_64 (69) = happyShift action_13
action_64 (20) = happyGoto action_65
action_64 (21) = happyGoto action_5
action_64 (22) = happyGoto action_6
action_64 (23) = happyGoto action_7
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_39

action_66 _ = happyReduce_38

action_67 _ = happyReduce_42

action_68 (41) = happyShift action_102
action_68 (51) = happyShift action_25
action_68 (52) = happyShift action_26
action_68 (53) = happyShift action_27
action_68 (5) = happyGoto action_99
action_68 (9) = happyGoto action_100
action_68 (10) = happyGoto action_101
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_25

action_70 _ = happyReduce_24

action_71 (36) = happyShift action_49
action_71 (37) = happyShift action_50
action_71 _ = happyReduce_34

action_72 (36) = happyShift action_49
action_72 (37) = happyShift action_50
action_72 _ = happyReduce_33

action_73 (36) = happyShift action_49
action_73 (37) = happyShift action_50
action_73 _ = happyReduce_32

action_74 (36) = happyShift action_49
action_74 (37) = happyShift action_50
action_74 _ = happyReduce_31

action_75 (36) = happyShift action_49
action_75 (37) = happyShift action_50
action_75 _ = happyReduce_30

action_76 (36) = happyShift action_49
action_76 (37) = happyShift action_50
action_76 _ = happyReduce_29

action_77 (38) = happyShift action_63
action_77 (39) = happyShift action_64
action_77 _ = happyReduce_36

action_78 (38) = happyShift action_63
action_78 (39) = happyShift action_64
action_78 _ = happyReduce_35

action_79 (37) = happyShift action_8
action_79 (40) = happyShift action_9
action_79 (41) = happyShift action_98
action_79 (66) = happyShift action_10
action_79 (67) = happyShift action_11
action_79 (68) = happyShift action_12
action_79 (69) = happyShift action_13
action_79 (18) = happyGoto action_96
action_79 (19) = happyGoto action_3
action_79 (20) = happyGoto action_4
action_79 (21) = happyGoto action_5
action_79 (22) = happyGoto action_6
action_79 (23) = happyGoto action_7
action_79 (35) = happyGoto action_97
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (36) = happyShift action_49
action_80 (37) = happyShift action_50
action_80 (55) = happyShift action_95
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_61

action_82 (68) = happyShift action_12
action_82 (22) = happyGoto action_94
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (37) = happyShift action_8
action_83 (40) = happyShift action_9
action_83 (66) = happyShift action_10
action_83 (67) = happyShift action_11
action_83 (68) = happyShift action_12
action_83 (69) = happyShift action_13
action_83 (18) = happyGoto action_93
action_83 (19) = happyGoto action_3
action_83 (20) = happyGoto action_4
action_83 (21) = happyGoto action_5
action_83 (22) = happyGoto action_6
action_83 (23) = happyGoto action_7
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (37) = happyShift action_8
action_84 (40) = happyShift action_9
action_84 (50) = happyShift action_24
action_84 (66) = happyShift action_10
action_84 (67) = happyShift action_11
action_84 (68) = happyShift action_12
action_84 (69) = happyShift action_13
action_84 (15) = happyGoto action_92
action_84 (16) = happyGoto action_20
action_84 (17) = happyGoto action_21
action_84 (18) = happyGoto action_48
action_84 (19) = happyGoto action_3
action_84 (20) = happyGoto action_4
action_84 (21) = happyGoto action_5
action_84 (22) = happyGoto action_6
action_84 (23) = happyGoto action_7
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (37) = happyShift action_8
action_85 (40) = happyShift action_9
action_85 (50) = happyShift action_24
action_85 (66) = happyShift action_10
action_85 (67) = happyShift action_11
action_85 (68) = happyShift action_12
action_85 (69) = happyShift action_13
action_85 (15) = happyGoto action_91
action_85 (16) = happyGoto action_20
action_85 (17) = happyGoto action_21
action_85 (18) = happyGoto action_48
action_85 (19) = happyGoto action_3
action_85 (20) = happyGoto action_4
action_85 (21) = happyGoto action_5
action_85 (22) = happyGoto action_6
action_85 (23) = happyGoto action_7
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_68

action_87 _ = happyReduce_51

action_88 _ = happyReduce_50

action_89 (37) = happyShift action_8
action_89 (40) = happyShift action_9
action_89 (66) = happyShift action_10
action_89 (67) = happyShift action_11
action_89 (68) = happyShift action_12
action_89 (69) = happyShift action_13
action_89 (18) = happyGoto action_90
action_89 (19) = happyGoto action_3
action_89 (20) = happyGoto action_4
action_89 (21) = happyGoto action_5
action_89 (22) = happyGoto action_6
action_89 (23) = happyGoto action_7
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (36) = happyShift action_49
action_90 (37) = happyShift action_50
action_90 (55) = happyShift action_114
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (41) = happyShift action_113
action_91 (48) = happyShift action_57
action_91 (49) = happyShift action_58
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (41) = happyShift action_112
action_92 (48) = happyShift action_57
action_92 (49) = happyShift action_58
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (36) = happyShift action_49
action_93 (37) = happyShift action_50
action_93 (41) = happyShift action_111
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (41) = happyShift action_110
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_60

action_96 (36) = happyShift action_49
action_96 (37) = happyShift action_50
action_96 _ = happyReduce_72

action_97 (41) = happyShift action_108
action_97 (56) = happyShift action_109
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_70

action_99 (68) = happyShift action_12
action_99 (22) = happyGoto action_107
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (41) = happyShift action_105
action_100 (56) = happyShift action_106
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_15

action_102 (64) = happyShift action_104
action_102 (11) = happyGoto action_103
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_11

action_104 (51) = happyShift action_25
action_104 (52) = happyShift action_26
action_104 (53) = happyShift action_27
action_104 (57) = happyShift action_41
action_104 (59) = happyShift action_42
action_104 (61) = happyShift action_43
action_104 (62) = happyShift action_44
action_104 (63) = happyShift action_45
action_104 (68) = happyShift action_46
action_104 (5) = happyGoto action_122
action_104 (12) = happyGoto action_123
action_104 (13) = happyGoto action_124
action_104 (22) = happyGoto action_30
action_104 (25) = happyGoto action_125
action_104 (26) = happyGoto action_32
action_104 (27) = happyGoto action_33
action_104 (28) = happyGoto action_34
action_104 (29) = happyGoto action_35
action_104 (30) = happyGoto action_36
action_104 (31) = happyGoto action_37
action_104 (32) = happyGoto action_38
action_104 (33) = happyGoto action_39
action_104 (34) = happyGoto action_40
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (64) = happyShift action_104
action_105 (11) = happyGoto action_121
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (51) = happyShift action_25
action_106 (52) = happyShift action_26
action_106 (53) = happyShift action_27
action_106 (5) = happyGoto action_99
action_106 (10) = happyGoto action_120
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_16

action_108 _ = happyReduce_69

action_109 (37) = happyShift action_8
action_109 (40) = happyShift action_9
action_109 (66) = happyShift action_10
action_109 (67) = happyShift action_11
action_109 (68) = happyShift action_12
action_109 (69) = happyShift action_13
action_109 (18) = happyGoto action_119
action_109 (19) = happyGoto action_3
action_109 (20) = happyGoto action_4
action_109 (21) = happyGoto action_5
action_109 (22) = happyGoto action_6
action_109 (23) = happyGoto action_7
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (55) = happyShift action_118
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (55) = happyShift action_117
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (64) = happyShift action_29
action_112 (24) = happyGoto action_116
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (64) = happyShift action_29
action_113 (24) = happyGoto action_115
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_65

action_115 (58) = happyShift action_131
action_115 _ = happyReduce_62

action_116 _ = happyReduce_64

action_117 _ = happyReduce_66

action_118 _ = happyReduce_67

action_119 (36) = happyShift action_49
action_119 (37) = happyShift action_50
action_119 _ = happyReduce_71

action_120 _ = happyReduce_14

action_121 _ = happyReduce_10

action_122 (68) = happyShift action_12
action_122 (14) = happyGoto action_129
action_122 (22) = happyGoto action_130
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (51) = happyShift action_25
action_123 (52) = happyShift action_26
action_123 (53) = happyShift action_27
action_123 (57) = happyShift action_41
action_123 (59) = happyShift action_42
action_123 (61) = happyShift action_43
action_123 (62) = happyShift action_44
action_123 (63) = happyShift action_45
action_123 (68) = happyShift action_46
action_123 (5) = happyGoto action_122
action_123 (13) = happyGoto action_127
action_123 (22) = happyGoto action_30
action_123 (25) = happyGoto action_128
action_123 (26) = happyGoto action_32
action_123 (27) = happyGoto action_33
action_123 (28) = happyGoto action_34
action_123 (29) = happyGoto action_35
action_123 (30) = happyGoto action_36
action_123 (31) = happyGoto action_37
action_123 (32) = happyGoto action_38
action_123 (33) = happyGoto action_39
action_123 (34) = happyGoto action_40
action_123 _ = happyFail (happyExpListPerState 123)

action_124 _ = happyReduce_20

action_125 (57) = happyShift action_41
action_125 (59) = happyShift action_42
action_125 (61) = happyShift action_43
action_125 (62) = happyShift action_44
action_125 (63) = happyShift action_45
action_125 (65) = happyShift action_126
action_125 (68) = happyShift action_46
action_125 (22) = happyGoto action_30
action_125 (26) = happyGoto action_87
action_125 (27) = happyGoto action_33
action_125 (28) = happyGoto action_34
action_125 (29) = happyGoto action_35
action_125 (30) = happyGoto action_36
action_125 (31) = happyGoto action_37
action_125 (32) = happyGoto action_38
action_125 (33) = happyGoto action_39
action_125 (34) = happyGoto action_40
action_125 _ = happyFail (happyExpListPerState 125)

action_126 _ = happyReduce_18

action_127 _ = happyReduce_19

action_128 (57) = happyShift action_41
action_128 (59) = happyShift action_42
action_128 (61) = happyShift action_43
action_128 (62) = happyShift action_44
action_128 (63) = happyShift action_45
action_128 (65) = happyShift action_135
action_128 (68) = happyShift action_46
action_128 (22) = happyGoto action_30
action_128 (26) = happyGoto action_87
action_128 (27) = happyGoto action_33
action_128 (28) = happyGoto action_34
action_128 (29) = happyGoto action_35
action_128 (30) = happyGoto action_36
action_128 (31) = happyGoto action_37
action_128 (32) = happyGoto action_38
action_128 (33) = happyGoto action_39
action_128 (34) = happyGoto action_40
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (55) = happyShift action_133
action_129 (56) = happyShift action_134
action_129 _ = happyFail (happyExpListPerState 129)

action_130 _ = happyReduce_23

action_131 (64) = happyShift action_29
action_131 (24) = happyGoto action_132
action_131 _ = happyFail (happyExpListPerState 131)

action_132 _ = happyReduce_63

action_133 _ = happyReduce_21

action_134 (68) = happyShift action_12
action_134 (22) = happyGoto action_136
action_134 _ = happyFail (happyExpListPerState 134)

action_135 _ = happyReduce_17

action_136 _ = happyReduce_22

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
happyReduction_3 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn4
		 (Bloco happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (Funcs happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn5
		 (TInt
	)

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn5
		 (TDouble
	)

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 _
	 =  HappyAbsSyn5
		 (TString
	)

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happyReduce 6 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_2 :->: (happy_var_4, happy_var_1), happy_var_6)
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 5 7 happyReduction_11
happyReduction_11 ((HappyAbsSyn11  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_2 :->: ([], happy_var_1), happy_var_5)
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn8
		 (DECVOID
	)

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  10 happyReduction_16
happyReduction_16 (HappyAbsSyn22  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_2 :#: (happy_var_1, 0)
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 11 happyReduction_17
happyReduction_17 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 ((happy_var_1, happy_var_2)
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  11 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (([], happy_var_2)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  12 happyReduction_19
happyReduction_19 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  13 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (map(\x -> x:#: (happy_var_1, 0)) happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  14 happyReduction_22
happyReduction_22 (HappyAbsSyn22  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  14 happyReduction_23
happyReduction_23 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  15 happyReduction_24
happyReduction_24 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Or happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  15 happyReduction_25
happyReduction_25 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (And happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  15 happyReduction_26
happyReduction_26 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  16 happyReduction_27
happyReduction_27 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Not happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  16 happyReduction_28
happyReduction_28 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Rel happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  17 happyReduction_29
happyReduction_29 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Req happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  17 happyReduction_30
happyReduction_30 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rdif happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  17 happyReduction_31
happyReduction_31 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rle happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  17 happyReduction_32
happyReduction_32 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rlt happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  17 happyReduction_33
happyReduction_33 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rge happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  17 happyReduction_34
happyReduction_34 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Rgt happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  18 happyReduction_35
happyReduction_35 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Add happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  18 happyReduction_36
happyReduction_36 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  18 happyReduction_37
happyReduction_37 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  19 happyReduction_38
happyReduction_38 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  19 happyReduction_39
happyReduction_39 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (Div happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  19 happyReduction_40
happyReduction_40 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  20 happyReduction_41
happyReduction_41 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn20
		 (Const happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  20 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  20 happyReduction_43
happyReduction_43 (HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (Neg happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  20 happyReduction_44
happyReduction_44 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 (IdVar happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  20 happyReduction_45
happyReduction_45 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 (Lit happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  21 happyReduction_46
happyReduction_46 (HappyTerminal (LIT happy_var_1))
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  22 happyReduction_47
happyReduction_47 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn22
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  23 happyReduction_48
happyReduction_48 (HappyTerminal (NUMINT happy_var_1))
	 =  HappyAbsSyn23
		 (CInt happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  23 happyReduction_49
happyReduction_49 (HappyTerminal (NUMDOUBLE happy_var_1))
	 =  HappyAbsSyn23
		 (CDouble happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  24 happyReduction_50
happyReduction_50 _
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn24
		 (happy_var_2
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_2  25 happyReduction_51
happyReduction_51 (HappyAbsSyn26  happy_var_2)
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_51 _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  25 happyReduction_52
happyReduction_52 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn25
		 ([happy_var_1]
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  26 happyReduction_53
happyReduction_53 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  26 happyReduction_54
happyReduction_54 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  26 happyReduction_55
happyReduction_55 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  26 happyReduction_56
happyReduction_56 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  26 happyReduction_57
happyReduction_57 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  26 happyReduction_58
happyReduction_58 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  26 happyReduction_59
happyReduction_59 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  27 happyReduction_60
happyReduction_60 _
	(HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn27
		 (Ret (Just happy_var_2)
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_2  27 happyReduction_61
happyReduction_61 _
	_
	 =  HappyAbsSyn27
		 (Ret Nothing
	)

happyReduce_62 = happyReduce 5 28 happyReduction_62
happyReduction_62 ((HappyAbsSyn24  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (If happy_var_3 happy_var_5 []
	) `HappyStk` happyRest

happyReduce_63 = happyReduce 7 28 happyReduction_63
happyReduction_63 ((HappyAbsSyn24  happy_var_7) `HappyStk`
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

happyReduce_64 = happyReduce 5 29 happyReduction_64
happyReduction_64 ((HappyAbsSyn24  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn29
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_65 = happyReduce 4 30 happyReduction_65
happyReduction_65 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn30
		 (Atrib happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_66 = happyReduce 5 31 happyReduction_66
happyReduction_66 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (Imp happy_var_3
	) `HappyStk` happyRest

happyReduce_67 = happyReduce 5 32 happyReduction_67
happyReduction_67 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (Leitura happy_var_3
	) `HappyStk` happyRest

happyReduce_68 = happySpecReduce_2  33 happyReduction_68
happyReduction_68 _
	(HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_68 _ _  = notHappyAtAll 

happyReduce_69 = happyReduce 4 34 happyReduction_69
happyReduction_69 (_ `HappyStk`
	(HappyAbsSyn35  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn34
		 (Proc happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_70 = happySpecReduce_3  34 happyReduction_70
happyReduction_70 _
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn34
		 (Proc happy_var_1 []
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_3  35 happyReduction_71
happyReduction_71 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn35
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_1  35 happyReduction_72
happyReduction_72 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1]
	)
happyReduction_72 _  = notHappyAtAll 

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
            Vars v -> print v
            Bloco v -> print v
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
