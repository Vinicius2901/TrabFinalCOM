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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,401) ([0,32768,61444,62464,0,0,9,57344,1,0,3,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1152,0,240,0,2304,0,480,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,49152,1,0,0,0,0,0,0,24576,0,0,0,0,0,0,0,0,0,0,0,64560,0,0,0,576,8,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18176,541,0,0,36352,1082,0,0,0,8,0,0,0,4842,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,1024,0,0,0,2048,0,0,0,4096,0,0,0,8192,0,0,0,18432,8192,3840,0,32768,0,0,0,0,0,0,0,24576,504,0,0,32768,4,61440,0,0,9,57344,1,0,18,49152,3,0,36,32768,7,0,72,0,15,0,144,0,30,0,288,0,60,0,576,0,120,0,1152,16,240,0,2304,32,480,0,0,0,0,0,0,12288,0,0,0,0,0,0,6144,1,0,0,0,0,0,0,16384,2,30720,0,32768,4,61440,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,192,0,0,0,384,0,0,0,768,0,0,0,1536,0,0,0,3072,0,0,0,6144,0,0,0,49152,0,0,0,32768,1,0,0,32768,12,61440,0,32768,1,4,0,0,0,0,0,0,0,0,2,0,72,0,15,0,144,2,30,0,288,4,60,0,0,0,0,0,0,0,0,0,0,0,0,0,4608,0,960,0,0,16384,605,0,0,0,0,0,6144,16384,0,0,0,770,0,0,0,1540,0,0,49152,8,0,0,0,16,0,0,0,0,0,0,0,6,0,0,0,128,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1152,0,240,0,0,1024,0,0,0,2048,0,0,0,0,32,0,0,0,64,0,0,0,0,0,0,0,4,0,0,0,8660,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,47744,4,0,0,32768,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Inicio","Tipo","BlocoPrinc","Declaracoes","Declaracao","ListaId","ExprL","TermL","ExprR","Expr","Term","Factor","Lit","IdVar","TConst","Bloco","ListaCmd","Cmd","Retorno","CmdSe","CmdEnquanto","CmdAtrib","CmdEscrita","CmdLeitura","ChamadaProc","ChamaFunc","ListaParam","'+'","'-'","'*'","'/'","'('","')'","'=='","'/='","'<='","'<'","'>='","'>'","'||'","'&&'","'!'","'int'","'float'","'string'","'void'","';'","','","'if'","'else'","'while'","'='","'print'","'read'","'return'","'{'","'}'","NumDouble","NumInt","Id","Literal","%eof"]
        bit_start = st Prelude.* 65
        bit_end = (st Prelude.+ 1) Prelude.* 65
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..64]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (32) = happyShift action_8
action_0 (35) = happyShift action_9
action_0 (45) = happyShift action_23
action_0 (46) = happyShift action_24
action_0 (47) = happyShift action_25
action_0 (48) = happyShift action_26
action_0 (59) = happyShift action_27
action_0 (61) = happyShift action_10
action_0 (62) = happyShift action_11
action_0 (63) = happyShift action_12
action_0 (64) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_15
action_0 (6) = happyGoto action_16
action_0 (7) = happyGoto action_17
action_0 (8) = happyGoto action_18
action_0 (10) = happyGoto action_19
action_0 (11) = happyGoto action_20
action_0 (12) = happyGoto action_21
action_0 (13) = happyGoto action_22
action_0 (14) = happyGoto action_3
action_0 (15) = happyGoto action_4
action_0 (16) = happyGoto action_5
action_0 (17) = happyGoto action_6
action_0 (18) = happyGoto action_7
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (32) = happyShift action_8
action_1 (35) = happyShift action_9
action_1 (61) = happyShift action_10
action_1 (62) = happyShift action_11
action_1 (63) = happyShift action_12
action_1 (64) = happyShift action_13
action_1 (13) = happyGoto action_2
action_1 (14) = happyGoto action_3
action_1 (15) = happyGoto action_4
action_1 (16) = happyGoto action_5
action_1 (17) = happyGoto action_6
action_1 (18) = happyGoto action_7
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (31) = happyShift action_48
action_2 (32) = happyShift action_49
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (33) = happyShift action_63
action_3 (34) = happyShift action_64
action_3 _ = happyReduce_28

action_4 _ = happyReduce_31

action_5 _ = happyReduce_36

action_6 _ = happyReduce_35

action_7 _ = happyReduce_32

action_8 (32) = happyShift action_8
action_8 (35) = happyShift action_9
action_8 (61) = happyShift action_10
action_8 (62) = happyShift action_11
action_8 (63) = happyShift action_12
action_8 (64) = happyShift action_13
action_8 (15) = happyGoto action_62
action_8 (16) = happyGoto action_5
action_8 (17) = happyGoto action_6
action_8 (18) = happyGoto action_7
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (32) = happyShift action_8
action_9 (35) = happyShift action_9
action_9 (61) = happyShift action_10
action_9 (62) = happyShift action_11
action_9 (63) = happyShift action_12
action_9 (64) = happyShift action_13
action_9 (13) = happyGoto action_61
action_9 (14) = happyGoto action_3
action_9 (15) = happyGoto action_4
action_9 (16) = happyGoto action_5
action_9 (17) = happyGoto action_6
action_9 (18) = happyGoto action_7
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_40

action_11 _ = happyReduce_39

action_12 _ = happyReduce_38

action_13 _ = happyReduce_37

action_14 (65) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (63) = happyShift action_12
action_15 (9) = happyGoto action_59
action_15 (17) = happyGoto action_60
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_4

action_17 (46) = happyShift action_24
action_17 (47) = happyShift action_25
action_17 (48) = happyShift action_26
action_17 (5) = happyGoto action_15
action_17 (8) = happyGoto action_58
action_17 _ = happyReduce_3

action_18 _ = happyReduce_11

action_19 (43) = happyShift action_56
action_19 (44) = happyShift action_57
action_19 _ = happyReduce_2

action_20 _ = happyReduce_17

action_21 _ = happyReduce_19

action_22 (31) = happyShift action_48
action_22 (32) = happyShift action_49
action_22 (37) = happyShift action_50
action_22 (38) = happyShift action_51
action_22 (39) = happyShift action_52
action_22 (40) = happyShift action_53
action_22 (41) = happyShift action_54
action_22 (42) = happyShift action_55
action_22 _ = happyReduce_1

action_23 (32) = happyShift action_8
action_23 (35) = happyShift action_9
action_23 (45) = happyShift action_23
action_23 (61) = happyShift action_10
action_23 (62) = happyShift action_11
action_23 (63) = happyShift action_12
action_23 (64) = happyShift action_13
action_23 (11) = happyGoto action_46
action_23 (12) = happyGoto action_21
action_23 (13) = happyGoto action_47
action_23 (14) = happyGoto action_3
action_23 (15) = happyGoto action_4
action_23 (16) = happyGoto action_5
action_23 (17) = happyGoto action_6
action_23 (18) = happyGoto action_7
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_5

action_25 _ = happyReduce_6

action_26 _ = happyReduce_7

action_27 (46) = happyShift action_24
action_27 (47) = happyShift action_25
action_27 (48) = happyShift action_26
action_27 (52) = happyShift action_40
action_27 (54) = happyShift action_41
action_27 (56) = happyShift action_42
action_27 (57) = happyShift action_43
action_27 (58) = happyShift action_44
action_27 (63) = happyShift action_45
action_27 (5) = happyGoto action_15
action_27 (7) = happyGoto action_28
action_27 (8) = happyGoto action_18
action_27 (17) = happyGoto action_29
action_27 (20) = happyGoto action_30
action_27 (21) = happyGoto action_31
action_27 (22) = happyGoto action_32
action_27 (23) = happyGoto action_33
action_27 (24) = happyGoto action_34
action_27 (25) = happyGoto action_35
action_27 (26) = happyGoto action_36
action_27 (27) = happyGoto action_37
action_27 (28) = happyGoto action_38
action_27 (29) = happyGoto action_39
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (46) = happyShift action_24
action_28 (47) = happyShift action_25
action_28 (48) = happyShift action_26
action_28 (52) = happyShift action_40
action_28 (54) = happyShift action_41
action_28 (56) = happyShift action_42
action_28 (57) = happyShift action_43
action_28 (58) = happyShift action_44
action_28 (63) = happyShift action_45
action_28 (5) = happyGoto action_15
action_28 (8) = happyGoto action_58
action_28 (17) = happyGoto action_29
action_28 (20) = happyGoto action_91
action_28 (21) = happyGoto action_31
action_28 (22) = happyGoto action_32
action_28 (23) = happyGoto action_33
action_28 (24) = happyGoto action_34
action_28 (25) = happyGoto action_35
action_28 (26) = happyGoto action_36
action_28 (27) = happyGoto action_37
action_28 (28) = happyGoto action_38
action_28 (29) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (55) = happyShift action_90
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (52) = happyShift action_40
action_30 (54) = happyShift action_41
action_30 (56) = happyShift action_42
action_30 (57) = happyShift action_43
action_30 (58) = happyShift action_44
action_30 (60) = happyShift action_89
action_30 (63) = happyShift action_45
action_30 (17) = happyGoto action_29
action_30 (21) = happyGoto action_88
action_30 (22) = happyGoto action_32
action_30 (23) = happyGoto action_33
action_30 (24) = happyGoto action_34
action_30 (25) = happyGoto action_35
action_30 (26) = happyGoto action_36
action_30 (27) = happyGoto action_37
action_30 (28) = happyGoto action_38
action_30 (29) = happyGoto action_39
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_43

action_32 _ = happyReduce_50

action_33 _ = happyReduce_44

action_34 _ = happyReduce_45

action_35 _ = happyReduce_46

action_36 _ = happyReduce_47

action_37 _ = happyReduce_48

action_38 _ = happyReduce_49

action_39 (50) = happyShift action_87
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (35) = happyShift action_86
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (35) = happyShift action_85
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (35) = happyShift action_84
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (35) = happyShift action_83
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (32) = happyShift action_8
action_44 (35) = happyShift action_9
action_44 (50) = happyShift action_82
action_44 (61) = happyShift action_10
action_44 (62) = happyShift action_11
action_44 (63) = happyShift action_12
action_44 (64) = happyShift action_13
action_44 (13) = happyGoto action_81
action_44 (14) = happyGoto action_3
action_44 (15) = happyGoto action_4
action_44 (16) = happyGoto action_5
action_44 (17) = happyGoto action_6
action_44 (18) = happyGoto action_7
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (35) = happyShift action_80
action_45 _ = happyReduce_38

action_46 _ = happyReduce_18

action_47 (31) = happyShift action_48
action_47 (32) = happyShift action_49
action_47 (37) = happyShift action_50
action_47 (38) = happyShift action_51
action_47 (39) = happyShift action_52
action_47 (40) = happyShift action_53
action_47 (41) = happyShift action_54
action_47 (42) = happyShift action_55
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (32) = happyShift action_8
action_48 (35) = happyShift action_9
action_48 (61) = happyShift action_10
action_48 (62) = happyShift action_11
action_48 (63) = happyShift action_12
action_48 (64) = happyShift action_13
action_48 (14) = happyGoto action_79
action_48 (15) = happyGoto action_4
action_48 (16) = happyGoto action_5
action_48 (17) = happyGoto action_6
action_48 (18) = happyGoto action_7
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (32) = happyShift action_8
action_49 (35) = happyShift action_9
action_49 (61) = happyShift action_10
action_49 (62) = happyShift action_11
action_49 (63) = happyShift action_12
action_49 (64) = happyShift action_13
action_49 (14) = happyGoto action_78
action_49 (15) = happyGoto action_4
action_49 (16) = happyGoto action_5
action_49 (17) = happyGoto action_6
action_49 (18) = happyGoto action_7
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (32) = happyShift action_8
action_50 (35) = happyShift action_9
action_50 (61) = happyShift action_10
action_50 (62) = happyShift action_11
action_50 (63) = happyShift action_12
action_50 (64) = happyShift action_13
action_50 (13) = happyGoto action_77
action_50 (14) = happyGoto action_3
action_50 (15) = happyGoto action_4
action_50 (16) = happyGoto action_5
action_50 (17) = happyGoto action_6
action_50 (18) = happyGoto action_7
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (32) = happyShift action_8
action_51 (35) = happyShift action_9
action_51 (61) = happyShift action_10
action_51 (62) = happyShift action_11
action_51 (63) = happyShift action_12
action_51 (64) = happyShift action_13
action_51 (13) = happyGoto action_76
action_51 (14) = happyGoto action_3
action_51 (15) = happyGoto action_4
action_51 (16) = happyGoto action_5
action_51 (17) = happyGoto action_6
action_51 (18) = happyGoto action_7
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (32) = happyShift action_8
action_52 (35) = happyShift action_9
action_52 (61) = happyShift action_10
action_52 (62) = happyShift action_11
action_52 (63) = happyShift action_12
action_52 (64) = happyShift action_13
action_52 (13) = happyGoto action_75
action_52 (14) = happyGoto action_3
action_52 (15) = happyGoto action_4
action_52 (16) = happyGoto action_5
action_52 (17) = happyGoto action_6
action_52 (18) = happyGoto action_7
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (32) = happyShift action_8
action_53 (35) = happyShift action_9
action_53 (61) = happyShift action_10
action_53 (62) = happyShift action_11
action_53 (63) = happyShift action_12
action_53 (64) = happyShift action_13
action_53 (13) = happyGoto action_74
action_53 (14) = happyGoto action_3
action_53 (15) = happyGoto action_4
action_53 (16) = happyGoto action_5
action_53 (17) = happyGoto action_6
action_53 (18) = happyGoto action_7
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (32) = happyShift action_8
action_54 (35) = happyShift action_9
action_54 (61) = happyShift action_10
action_54 (62) = happyShift action_11
action_54 (63) = happyShift action_12
action_54 (64) = happyShift action_13
action_54 (13) = happyGoto action_73
action_54 (14) = happyGoto action_3
action_54 (15) = happyGoto action_4
action_54 (16) = happyGoto action_5
action_54 (17) = happyGoto action_6
action_54 (18) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (32) = happyShift action_8
action_55 (35) = happyShift action_9
action_55 (61) = happyShift action_10
action_55 (62) = happyShift action_11
action_55 (63) = happyShift action_12
action_55 (64) = happyShift action_13
action_55 (13) = happyGoto action_72
action_55 (14) = happyGoto action_3
action_55 (15) = happyGoto action_4
action_55 (16) = happyGoto action_5
action_55 (17) = happyGoto action_6
action_55 (18) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (32) = happyShift action_8
action_56 (35) = happyShift action_9
action_56 (45) = happyShift action_23
action_56 (61) = happyShift action_10
action_56 (62) = happyShift action_11
action_56 (63) = happyShift action_12
action_56 (64) = happyShift action_13
action_56 (11) = happyGoto action_71
action_56 (12) = happyGoto action_21
action_56 (13) = happyGoto action_47
action_56 (14) = happyGoto action_3
action_56 (15) = happyGoto action_4
action_56 (16) = happyGoto action_5
action_56 (17) = happyGoto action_6
action_56 (18) = happyGoto action_7
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (32) = happyShift action_8
action_57 (35) = happyShift action_9
action_57 (45) = happyShift action_23
action_57 (61) = happyShift action_10
action_57 (62) = happyShift action_11
action_57 (63) = happyShift action_12
action_57 (64) = happyShift action_13
action_57 (11) = happyGoto action_70
action_57 (12) = happyGoto action_21
action_57 (13) = happyGoto action_47
action_57 (14) = happyGoto action_3
action_57 (15) = happyGoto action_4
action_57 (16) = happyGoto action_5
action_57 (17) = happyGoto action_6
action_57 (18) = happyGoto action_7
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_10

action_59 (50) = happyShift action_68
action_59 (51) = happyShift action_69
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_14

action_61 (31) = happyShift action_48
action_61 (32) = happyShift action_49
action_61 (36) = happyShift action_67
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_34

action_63 (32) = happyShift action_8
action_63 (35) = happyShift action_9
action_63 (61) = happyShift action_10
action_63 (62) = happyShift action_11
action_63 (63) = happyShift action_12
action_63 (64) = happyShift action_13
action_63 (15) = happyGoto action_66
action_63 (16) = happyGoto action_5
action_63 (17) = happyGoto action_6
action_63 (18) = happyGoto action_7
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (32) = happyShift action_8
action_64 (35) = happyShift action_9
action_64 (61) = happyShift action_10
action_64 (62) = happyShift action_11
action_64 (63) = happyShift action_12
action_64 (64) = happyShift action_13
action_64 (15) = happyGoto action_65
action_64 (16) = happyGoto action_5
action_64 (17) = happyGoto action_6
action_64 (18) = happyGoto action_7
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_30

action_66 _ = happyReduce_29

action_67 _ = happyReduce_33

action_68 _ = happyReduce_12

action_69 (63) = happyShift action_12
action_69 (17) = happyGoto action_102
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_16

action_71 _ = happyReduce_15

action_72 (31) = happyShift action_48
action_72 (32) = happyShift action_49
action_72 _ = happyReduce_25

action_73 (31) = happyShift action_48
action_73 (32) = happyShift action_49
action_73 _ = happyReduce_24

action_74 (31) = happyShift action_48
action_74 (32) = happyShift action_49
action_74 _ = happyReduce_23

action_75 (31) = happyShift action_48
action_75 (32) = happyShift action_49
action_75 _ = happyReduce_22

action_76 (31) = happyShift action_48
action_76 (32) = happyShift action_49
action_76 _ = happyReduce_21

action_77 (31) = happyShift action_48
action_77 (32) = happyShift action_49
action_77 _ = happyReduce_20

action_78 (33) = happyShift action_63
action_78 (34) = happyShift action_64
action_78 _ = happyReduce_27

action_79 (33) = happyShift action_63
action_79 (34) = happyShift action_64
action_79 _ = happyReduce_26

action_80 (32) = happyShift action_8
action_80 (35) = happyShift action_9
action_80 (36) = happyShift action_101
action_80 (61) = happyShift action_10
action_80 (62) = happyShift action_11
action_80 (63) = happyShift action_12
action_80 (64) = happyShift action_13
action_80 (13) = happyGoto action_99
action_80 (14) = happyGoto action_3
action_80 (15) = happyGoto action_4
action_80 (16) = happyGoto action_5
action_80 (17) = happyGoto action_6
action_80 (18) = happyGoto action_7
action_80 (30) = happyGoto action_100
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (31) = happyShift action_48
action_81 (32) = happyShift action_49
action_81 (50) = happyShift action_98
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_52

action_83 (63) = happyShift action_12
action_83 (17) = happyGoto action_97
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (32) = happyShift action_8
action_84 (35) = happyShift action_9
action_84 (61) = happyShift action_10
action_84 (62) = happyShift action_11
action_84 (63) = happyShift action_12
action_84 (64) = happyShift action_13
action_84 (13) = happyGoto action_96
action_84 (14) = happyGoto action_3
action_84 (15) = happyGoto action_4
action_84 (16) = happyGoto action_5
action_84 (17) = happyGoto action_6
action_84 (18) = happyGoto action_7
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (32) = happyShift action_8
action_85 (35) = happyShift action_9
action_85 (45) = happyShift action_23
action_85 (61) = happyShift action_10
action_85 (62) = happyShift action_11
action_85 (63) = happyShift action_12
action_85 (64) = happyShift action_13
action_85 (10) = happyGoto action_95
action_85 (11) = happyGoto action_20
action_85 (12) = happyGoto action_21
action_85 (13) = happyGoto action_47
action_85 (14) = happyGoto action_3
action_85 (15) = happyGoto action_4
action_85 (16) = happyGoto action_5
action_85 (17) = happyGoto action_6
action_85 (18) = happyGoto action_7
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (32) = happyShift action_8
action_86 (35) = happyShift action_9
action_86 (45) = happyShift action_23
action_86 (61) = happyShift action_10
action_86 (62) = happyShift action_11
action_86 (63) = happyShift action_12
action_86 (64) = happyShift action_13
action_86 (10) = happyGoto action_94
action_86 (11) = happyGoto action_20
action_86 (12) = happyGoto action_21
action_86 (13) = happyGoto action_47
action_86 (14) = happyGoto action_3
action_86 (15) = happyGoto action_4
action_86 (16) = happyGoto action_5
action_86 (17) = happyGoto action_6
action_86 (18) = happyGoto action_7
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_59

action_88 _ = happyReduce_42

action_89 _ = happyReduce_9

action_90 (32) = happyShift action_8
action_90 (35) = happyShift action_9
action_90 (61) = happyShift action_10
action_90 (62) = happyShift action_11
action_90 (63) = happyShift action_12
action_90 (64) = happyShift action_13
action_90 (13) = happyGoto action_93
action_90 (14) = happyGoto action_3
action_90 (15) = happyGoto action_4
action_90 (16) = happyGoto action_5
action_90 (17) = happyGoto action_6
action_90 (18) = happyGoto action_7
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (52) = happyShift action_40
action_91 (54) = happyShift action_41
action_91 (56) = happyShift action_42
action_91 (57) = happyShift action_43
action_91 (58) = happyShift action_44
action_91 (60) = happyShift action_92
action_91 (63) = happyShift action_45
action_91 (17) = happyGoto action_29
action_91 (21) = happyGoto action_88
action_91 (22) = happyGoto action_32
action_91 (23) = happyGoto action_33
action_91 (24) = happyGoto action_34
action_91 (25) = happyGoto action_35
action_91 (26) = happyGoto action_36
action_91 (27) = happyGoto action_37
action_91 (28) = happyGoto action_38
action_91 (29) = happyGoto action_39
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_8

action_93 (31) = happyShift action_48
action_93 (32) = happyShift action_49
action_93 (50) = happyShift action_109
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (36) = happyShift action_108
action_94 (43) = happyShift action_56
action_94 (44) = happyShift action_57
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (36) = happyShift action_107
action_95 (43) = happyShift action_56
action_95 (44) = happyShift action_57
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (31) = happyShift action_48
action_96 (32) = happyShift action_49
action_96 (36) = happyShift action_106
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (36) = happyShift action_105
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_51

action_99 (31) = happyShift action_48
action_99 (32) = happyShift action_49
action_99 _ = happyReduce_63

action_100 (36) = happyShift action_103
action_100 (51) = happyShift action_104
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_61

action_102 _ = happyReduce_13

action_103 _ = happyReduce_60

action_104 (32) = happyShift action_8
action_104 (35) = happyShift action_9
action_104 (61) = happyShift action_10
action_104 (62) = happyShift action_11
action_104 (63) = happyShift action_12
action_104 (64) = happyShift action_13
action_104 (13) = happyGoto action_115
action_104 (14) = happyGoto action_3
action_104 (15) = happyGoto action_4
action_104 (16) = happyGoto action_5
action_104 (17) = happyGoto action_6
action_104 (18) = happyGoto action_7
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (50) = happyShift action_114
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (50) = happyShift action_113
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (59) = happyShift action_111
action_107 (19) = happyGoto action_112
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (59) = happyShift action_111
action_108 (19) = happyGoto action_110
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_56

action_110 (53) = happyShift action_117
action_110 _ = happyReduce_53

action_111 (52) = happyShift action_40
action_111 (54) = happyShift action_41
action_111 (56) = happyShift action_42
action_111 (57) = happyShift action_43
action_111 (58) = happyShift action_44
action_111 (63) = happyShift action_45
action_111 (17) = happyGoto action_29
action_111 (20) = happyGoto action_116
action_111 (21) = happyGoto action_31
action_111 (22) = happyGoto action_32
action_111 (23) = happyGoto action_33
action_111 (24) = happyGoto action_34
action_111 (25) = happyGoto action_35
action_111 (26) = happyGoto action_36
action_111 (27) = happyGoto action_37
action_111 (28) = happyGoto action_38
action_111 (29) = happyGoto action_39
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_55

action_113 _ = happyReduce_57

action_114 _ = happyReduce_58

action_115 (31) = happyShift action_48
action_115 (32) = happyShift action_49
action_115 _ = happyReduce_62

action_116 (52) = happyShift action_40
action_116 (54) = happyShift action_41
action_116 (56) = happyShift action_42
action_116 (57) = happyShift action_43
action_116 (58) = happyShift action_44
action_116 (60) = happyShift action_119
action_116 (63) = happyShift action_45
action_116 (17) = happyGoto action_29
action_116 (21) = happyGoto action_88
action_116 (22) = happyGoto action_32
action_116 (23) = happyGoto action_33
action_116 (24) = happyGoto action_34
action_116 (25) = happyGoto action_35
action_116 (26) = happyGoto action_36
action_116 (27) = happyGoto action_37
action_116 (28) = happyGoto action_38
action_116 (29) = happyGoto action_39
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (59) = happyShift action_111
action_117 (19) = happyGoto action_118
action_117 _ = happyFail (happyExpListPerState 117)

action_118 _ = happyReduce_54

action_119 _ = happyReduce_41

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn4
		 (Expr happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn4
		 (ExprL happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn4
		 (Vars happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (BlocoPrinci happy_var_1
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

happyReduce_8 = happyReduce 4 6 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 ((happy_var_2, happy_var_3)
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (([], happy_var_2)
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn8
		 (map(\x -> x:#: (happy_var_1, 0)) happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  9 happyReduction_13
happyReduction_13 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  9 happyReduction_14
happyReduction_14 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  10 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Or happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (And happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  10 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  11 happyReduction_18
happyReduction_18 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Not happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  11 happyReduction_19
happyReduction_19 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rel happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  12 happyReduction_20
happyReduction_20 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Req happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  12 happyReduction_21
happyReduction_21 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Rdif happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  12 happyReduction_22
happyReduction_22 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Rle happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Rlt happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  12 happyReduction_24
happyReduction_24 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Rge happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  12 happyReduction_25
happyReduction_25 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (Rgt happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  13 happyReduction_26
happyReduction_26 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Add happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  13 happyReduction_27
happyReduction_27 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  13 happyReduction_28
happyReduction_28 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  14 happyReduction_29
happyReduction_29 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Div happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  14 happyReduction_31
happyReduction_31 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  15 happyReduction_32
happyReduction_32 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn15
		 (Const happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  15 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  15 happyReduction_34
happyReduction_34 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (Neg happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  15 happyReduction_35
happyReduction_35 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn15
		 (IdVar happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  15 happyReduction_36
happyReduction_36 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (Lit happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  16 happyReduction_37
happyReduction_37 (HappyTerminal (LIT happy_var_1))
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  17 happyReduction_38
happyReduction_38 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  18 happyReduction_39
happyReduction_39 (HappyTerminal (NUMINT happy_var_1))
	 =  HappyAbsSyn18
		 (CInt happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  18 happyReduction_40
happyReduction_40 (HappyTerminal (NUMDOUBLE happy_var_1))
	 =  HappyAbsSyn18
		 (CDouble happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  19 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (happy_var_2
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  20 happyReduction_42
happyReduction_42 (HappyAbsSyn21  happy_var_2)
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  20 happyReduction_43
happyReduction_43 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 ([happy_var_1]
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  21 happyReduction_44
happyReduction_44 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  21 happyReduction_45
happyReduction_45 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  21 happyReduction_46
happyReduction_46 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  21 happyReduction_47
happyReduction_47 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  21 happyReduction_48
happyReduction_48 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  21 happyReduction_49
happyReduction_49 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  21 happyReduction_50
happyReduction_50 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  22 happyReduction_51
happyReduction_51 _
	(HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (Ret (Just happy_var_2)
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_2  22 happyReduction_52
happyReduction_52 _
	_
	 =  HappyAbsSyn22
		 (Ret Nothing
	)

happyReduce_53 = happyReduce 5 23 happyReduction_53
happyReduction_53 ((HappyAbsSyn19  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (If happy_var_3 happy_var_5 []
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 7 23 happyReduction_54
happyReduction_54 ((HappyAbsSyn19  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (If happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_55 = happyReduce 5 24 happyReduction_55
happyReduction_55 ((HappyAbsSyn19  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_56 = happyReduce 4 25 happyReduction_56
happyReduction_56 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (Atrib happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_57 = happyReduce 5 26 happyReduction_57
happyReduction_57 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (Imp happy_var_3
	) `HappyStk` happyRest

happyReduce_58 = happyReduce 5 27 happyReduction_58
happyReduction_58 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (Leitura happy_var_3
	) `HappyStk` happyRest

happyReduce_59 = happySpecReduce_2  28 happyReduction_59
happyReduction_59 _
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_59 _ _  = notHappyAtAll 

happyReduce_60 = happyReduce 4 29 happyReduction_60
happyReduction_60 (_ `HappyStk`
	(HappyAbsSyn30  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn29
		 (Proc happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_61 = happySpecReduce_3  29 happyReduction_61
happyReduction_61 _
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn29
		 (Proc happy_var_1 []
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  30 happyReduction_62
happyReduction_62 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  30 happyReduction_63
happyReduction_63 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn30
		 ([happy_var_1]
	)
happyReduction_63 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 65 65 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ADD -> cont 31;
	SUB -> cont 32;
	MUL -> cont 33;
	DIV -> cont 34;
	LPAR -> cont 35;
	RPAR -> cont 36;
	REQ -> cont 37;
	RNE -> cont 38;
	RLE -> cont 39;
	RLT -> cont 40;
	RGE -> cont 41;
	RGT -> cont 42;
	OR -> cont 43;
	AND -> cont 44;
	NOT -> cont 45;
	DECINT -> cont 46;
	DECFLOAT -> cont 47;
	DECSTRING -> cont 48;
	DECVOID -> cont 49;
	FIMLINHA -> cont 50;
	VIRGULA -> cont 51;
	IF -> cont 52;
	ELSE -> cont 53;
	WHILE -> cont 54;
	ATRIB -> cont 55;
	ESCR -> cont 56;
	LEIT -> cont 57;
	RET -> cont 58;
	LBRACK -> cont 59;
	RBRACK -> cont 60;
	NUMDOUBLE happy_dollar_dollar -> cont 61;
	NUMINT happy_dollar_dollar -> cont 62;
	ID happy_dollar_dollar -> cont 63;
	LIT happy_dollar_dollar -> cont 64;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 65 tk tks = happyError' (tks, explist)
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
            BlocoPrinci v -> print v
            -- DeclParams v -> print v
            -- Funcs v -> print v
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
