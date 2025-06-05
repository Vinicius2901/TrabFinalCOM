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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,333) ([0,16384,30722,15616,0,8192,1,7680,0,6144,0,0,0,12288,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,576,0,60,0,288,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,28672,0,0,0,0,0,0,0,384,0,0,0,0,0,0,0,0,0,0,49920,15,0,0,0,0,0,0,1152,16,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7488,2,0,32,256,0,0,0,38736,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,1024,0,0,0,512,0,0,0,256,0,0,0,128,0,0,0,72,32784,7,0,0,0,0,0,4035,0,0,0,9,61440,0,32768,4,30720,0,16384,2,15360,0,8192,1,7680,0,36864,0,3840,0,18432,0,1920,0,9216,0,960,0,4608,0,480,0,2304,32,240,0,1152,16,120,0,0,0,0,0,0,192,0,0,0,0,0,0,140,0,0,0,0,0,0,0,18,57344,1,0,9,61440,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,384,0,0,0,192,0,0,0,96,0,0,0,48,0,0,0,24,0,0,0,12,0,0,0,24,0,0,0,12,0,0,32768,1,2,0,0,0,0,0,0,0,4096,0,8192,1,7680,0,36864,512,3840,0,18432,256,1920,0,0,0,0,0,0,0,0,0,0,0,0,0,3200,0,120,0,576,0,60,0,48,64,0,0,24,0,0,0,128,32,0,0,0,0,0,0,12320,0,0,0,6160,0,0,49152,8,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,2048,0,0,0,0,8,0,0,0,4,0,0,0,0,0,576,0,60,0,0,0,0,0,24,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Inicio","Tipo","Declaracoes","Declaracao","ListaId","ExprL","TermL","ExprR","Expr","Term","Factor","Lit","IdVar","TConst","Bloco","ListaCmd","Cmd","Retorno","CmdSe","CmdEnquanto","CmdAtrib","CmdEscrita","CmdLeitura","ChamadaProc","ChamaFunc","ListaParam","'+'","'-'","'*'","'/'","'('","')'","'=='","'/='","'<='","'<'","'>='","'>'","'||'","'&&'","'!'","'int'","'float'","'string'","';'","','","'if'","'else'","'while'","'='","'print'","'read'","'return'","'{'","'}'","NumDouble","NumInt","Id","Literal","%eof"]
        bit_start = st Prelude.* 63
        bit_end = (st Prelude.+ 1) Prelude.* 63
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..62]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (31) = happyShift action_8
action_0 (34) = happyShift action_9
action_0 (44) = happyShift action_23
action_0 (45) = happyShift action_24
action_0 (46) = happyShift action_25
action_0 (47) = happyShift action_26
action_0 (57) = happyShift action_27
action_0 (59) = happyShift action_10
action_0 (60) = happyShift action_11
action_0 (61) = happyShift action_12
action_0 (62) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_15
action_0 (6) = happyGoto action_16
action_0 (7) = happyGoto action_17
action_0 (9) = happyGoto action_18
action_0 (10) = happyGoto action_19
action_0 (11) = happyGoto action_20
action_0 (12) = happyGoto action_21
action_0 (13) = happyGoto action_3
action_0 (14) = happyGoto action_4
action_0 (15) = happyGoto action_5
action_0 (16) = happyGoto action_6
action_0 (17) = happyGoto action_7
action_0 (18) = happyGoto action_22
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (31) = happyShift action_8
action_1 (34) = happyShift action_9
action_1 (59) = happyShift action_10
action_1 (60) = happyShift action_11
action_1 (61) = happyShift action_12
action_1 (62) = happyShift action_13
action_1 (12) = happyGoto action_2
action_1 (13) = happyGoto action_3
action_1 (14) = happyGoto action_4
action_1 (15) = happyGoto action_5
action_1 (16) = happyGoto action_6
action_1 (17) = happyGoto action_7
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (30) = happyShift action_46
action_2 (31) = happyShift action_47
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (32) = happyShift action_61
action_3 (33) = happyShift action_62
action_3 _ = happyReduce_26

action_4 _ = happyReduce_29

action_5 _ = happyReduce_34

action_6 _ = happyReduce_33

action_7 _ = happyReduce_30

action_8 (31) = happyShift action_8
action_8 (34) = happyShift action_9
action_8 (59) = happyShift action_10
action_8 (60) = happyShift action_11
action_8 (61) = happyShift action_12
action_8 (62) = happyShift action_13
action_8 (14) = happyGoto action_60
action_8 (15) = happyGoto action_5
action_8 (16) = happyGoto action_6
action_8 (17) = happyGoto action_7
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (31) = happyShift action_8
action_9 (34) = happyShift action_9
action_9 (59) = happyShift action_10
action_9 (60) = happyShift action_11
action_9 (61) = happyShift action_12
action_9 (62) = happyShift action_13
action_9 (12) = happyGoto action_59
action_9 (13) = happyGoto action_3
action_9 (14) = happyGoto action_4
action_9 (15) = happyGoto action_5
action_9 (16) = happyGoto action_6
action_9 (17) = happyGoto action_7
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_38

action_11 _ = happyReduce_37

action_12 _ = happyReduce_36

action_13 _ = happyReduce_35

action_14 (63) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (61) = happyShift action_12
action_15 (8) = happyGoto action_57
action_15 (16) = happyGoto action_58
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (45) = happyShift action_24
action_16 (46) = happyShift action_25
action_16 (47) = happyShift action_26
action_16 (5) = happyGoto action_15
action_16 (7) = happyGoto action_56
action_16 _ = happyReduce_3

action_17 _ = happyReduce_9

action_18 (42) = happyShift action_54
action_18 (43) = happyShift action_55
action_18 _ = happyReduce_2

action_19 _ = happyReduce_15

action_20 _ = happyReduce_17

action_21 (30) = happyShift action_46
action_21 (31) = happyShift action_47
action_21 (36) = happyShift action_48
action_21 (37) = happyShift action_49
action_21 (38) = happyShift action_50
action_21 (39) = happyShift action_51
action_21 (40) = happyShift action_52
action_21 (41) = happyShift action_53
action_21 _ = happyReduce_1

action_22 _ = happyReduce_4

action_23 (31) = happyShift action_8
action_23 (34) = happyShift action_9
action_23 (44) = happyShift action_23
action_23 (59) = happyShift action_10
action_23 (60) = happyShift action_11
action_23 (61) = happyShift action_12
action_23 (62) = happyShift action_13
action_23 (10) = happyGoto action_44
action_23 (11) = happyGoto action_20
action_23 (12) = happyGoto action_45
action_23 (13) = happyGoto action_3
action_23 (14) = happyGoto action_4
action_23 (15) = happyGoto action_5
action_23 (16) = happyGoto action_6
action_23 (17) = happyGoto action_7
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_5

action_25 _ = happyReduce_6

action_26 _ = happyReduce_7

action_27 (50) = happyShift action_39
action_27 (52) = happyShift action_40
action_27 (54) = happyShift action_41
action_27 (55) = happyShift action_42
action_27 (56) = happyShift action_43
action_27 (61) = happyShift action_12
action_27 (16) = happyGoto action_28
action_27 (19) = happyGoto action_29
action_27 (20) = happyGoto action_30
action_27 (21) = happyGoto action_31
action_27 (22) = happyGoto action_32
action_27 (23) = happyGoto action_33
action_27 (24) = happyGoto action_34
action_27 (25) = happyGoto action_35
action_27 (26) = happyGoto action_36
action_27 (27) = happyGoto action_37
action_27 (28) = happyGoto action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (34) = happyShift action_87
action_28 (53) = happyShift action_88
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (50) = happyShift action_39
action_29 (52) = happyShift action_40
action_29 (54) = happyShift action_41
action_29 (55) = happyShift action_42
action_29 (56) = happyShift action_43
action_29 (58) = happyShift action_86
action_29 (61) = happyShift action_12
action_29 (16) = happyGoto action_28
action_29 (20) = happyGoto action_85
action_29 (21) = happyGoto action_31
action_29 (22) = happyGoto action_32
action_29 (23) = happyGoto action_33
action_29 (24) = happyGoto action_34
action_29 (25) = happyGoto action_35
action_29 (26) = happyGoto action_36
action_29 (27) = happyGoto action_37
action_29 (28) = happyGoto action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_41

action_31 _ = happyReduce_48

action_32 _ = happyReduce_42

action_33 _ = happyReduce_43

action_34 _ = happyReduce_44

action_35 _ = happyReduce_45

action_36 _ = happyReduce_46

action_37 _ = happyReduce_47

action_38 (48) = happyShift action_84
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (34) = happyShift action_83
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (34) = happyShift action_82
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (34) = happyShift action_81
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (34) = happyShift action_80
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (31) = happyShift action_8
action_43 (34) = happyShift action_9
action_43 (48) = happyShift action_79
action_43 (59) = happyShift action_10
action_43 (60) = happyShift action_11
action_43 (61) = happyShift action_12
action_43 (62) = happyShift action_13
action_43 (12) = happyGoto action_78
action_43 (13) = happyGoto action_3
action_43 (14) = happyGoto action_4
action_43 (15) = happyGoto action_5
action_43 (16) = happyGoto action_6
action_43 (17) = happyGoto action_7
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_16

action_45 (30) = happyShift action_46
action_45 (31) = happyShift action_47
action_45 (36) = happyShift action_48
action_45 (37) = happyShift action_49
action_45 (38) = happyShift action_50
action_45 (39) = happyShift action_51
action_45 (40) = happyShift action_52
action_45 (41) = happyShift action_53
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (31) = happyShift action_8
action_46 (34) = happyShift action_9
action_46 (59) = happyShift action_10
action_46 (60) = happyShift action_11
action_46 (61) = happyShift action_12
action_46 (62) = happyShift action_13
action_46 (13) = happyGoto action_77
action_46 (14) = happyGoto action_4
action_46 (15) = happyGoto action_5
action_46 (16) = happyGoto action_6
action_46 (17) = happyGoto action_7
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (31) = happyShift action_8
action_47 (34) = happyShift action_9
action_47 (59) = happyShift action_10
action_47 (60) = happyShift action_11
action_47 (61) = happyShift action_12
action_47 (62) = happyShift action_13
action_47 (13) = happyGoto action_76
action_47 (14) = happyGoto action_4
action_47 (15) = happyGoto action_5
action_47 (16) = happyGoto action_6
action_47 (17) = happyGoto action_7
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (31) = happyShift action_8
action_48 (34) = happyShift action_9
action_48 (59) = happyShift action_10
action_48 (60) = happyShift action_11
action_48 (61) = happyShift action_12
action_48 (62) = happyShift action_13
action_48 (12) = happyGoto action_75
action_48 (13) = happyGoto action_3
action_48 (14) = happyGoto action_4
action_48 (15) = happyGoto action_5
action_48 (16) = happyGoto action_6
action_48 (17) = happyGoto action_7
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (31) = happyShift action_8
action_49 (34) = happyShift action_9
action_49 (59) = happyShift action_10
action_49 (60) = happyShift action_11
action_49 (61) = happyShift action_12
action_49 (62) = happyShift action_13
action_49 (12) = happyGoto action_74
action_49 (13) = happyGoto action_3
action_49 (14) = happyGoto action_4
action_49 (15) = happyGoto action_5
action_49 (16) = happyGoto action_6
action_49 (17) = happyGoto action_7
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (31) = happyShift action_8
action_50 (34) = happyShift action_9
action_50 (59) = happyShift action_10
action_50 (60) = happyShift action_11
action_50 (61) = happyShift action_12
action_50 (62) = happyShift action_13
action_50 (12) = happyGoto action_73
action_50 (13) = happyGoto action_3
action_50 (14) = happyGoto action_4
action_50 (15) = happyGoto action_5
action_50 (16) = happyGoto action_6
action_50 (17) = happyGoto action_7
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (31) = happyShift action_8
action_51 (34) = happyShift action_9
action_51 (59) = happyShift action_10
action_51 (60) = happyShift action_11
action_51 (61) = happyShift action_12
action_51 (62) = happyShift action_13
action_51 (12) = happyGoto action_72
action_51 (13) = happyGoto action_3
action_51 (14) = happyGoto action_4
action_51 (15) = happyGoto action_5
action_51 (16) = happyGoto action_6
action_51 (17) = happyGoto action_7
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (31) = happyShift action_8
action_52 (34) = happyShift action_9
action_52 (59) = happyShift action_10
action_52 (60) = happyShift action_11
action_52 (61) = happyShift action_12
action_52 (62) = happyShift action_13
action_52 (12) = happyGoto action_71
action_52 (13) = happyGoto action_3
action_52 (14) = happyGoto action_4
action_52 (15) = happyGoto action_5
action_52 (16) = happyGoto action_6
action_52 (17) = happyGoto action_7
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (31) = happyShift action_8
action_53 (34) = happyShift action_9
action_53 (59) = happyShift action_10
action_53 (60) = happyShift action_11
action_53 (61) = happyShift action_12
action_53 (62) = happyShift action_13
action_53 (12) = happyGoto action_70
action_53 (13) = happyGoto action_3
action_53 (14) = happyGoto action_4
action_53 (15) = happyGoto action_5
action_53 (16) = happyGoto action_6
action_53 (17) = happyGoto action_7
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (31) = happyShift action_8
action_54 (34) = happyShift action_9
action_54 (44) = happyShift action_23
action_54 (59) = happyShift action_10
action_54 (60) = happyShift action_11
action_54 (61) = happyShift action_12
action_54 (62) = happyShift action_13
action_54 (10) = happyGoto action_69
action_54 (11) = happyGoto action_20
action_54 (12) = happyGoto action_45
action_54 (13) = happyGoto action_3
action_54 (14) = happyGoto action_4
action_54 (15) = happyGoto action_5
action_54 (16) = happyGoto action_6
action_54 (17) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (31) = happyShift action_8
action_55 (34) = happyShift action_9
action_55 (44) = happyShift action_23
action_55 (59) = happyShift action_10
action_55 (60) = happyShift action_11
action_55 (61) = happyShift action_12
action_55 (62) = happyShift action_13
action_55 (10) = happyGoto action_68
action_55 (11) = happyGoto action_20
action_55 (12) = happyGoto action_45
action_55 (13) = happyGoto action_3
action_55 (14) = happyGoto action_4
action_55 (15) = happyGoto action_5
action_55 (16) = happyGoto action_6
action_55 (17) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_8

action_57 (48) = happyShift action_66
action_57 (49) = happyShift action_67
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_12

action_59 (30) = happyShift action_46
action_59 (31) = happyShift action_47
action_59 (35) = happyShift action_65
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_32

action_61 (31) = happyShift action_8
action_61 (34) = happyShift action_9
action_61 (59) = happyShift action_10
action_61 (60) = happyShift action_11
action_61 (61) = happyShift action_12
action_61 (62) = happyShift action_13
action_61 (14) = happyGoto action_64
action_61 (15) = happyGoto action_5
action_61 (16) = happyGoto action_6
action_61 (17) = happyGoto action_7
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (31) = happyShift action_8
action_62 (34) = happyShift action_9
action_62 (59) = happyShift action_10
action_62 (60) = happyShift action_11
action_62 (61) = happyShift action_12
action_62 (62) = happyShift action_13
action_62 (14) = happyGoto action_63
action_62 (15) = happyGoto action_5
action_62 (16) = happyGoto action_6
action_62 (17) = happyGoto action_7
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_28

action_64 _ = happyReduce_27

action_65 _ = happyReduce_31

action_66 _ = happyReduce_10

action_67 (61) = happyShift action_12
action_67 (16) = happyGoto action_98
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_14

action_69 _ = happyReduce_13

action_70 (30) = happyShift action_46
action_70 (31) = happyShift action_47
action_70 _ = happyReduce_23

action_71 (30) = happyShift action_46
action_71 (31) = happyShift action_47
action_71 _ = happyReduce_22

action_72 (30) = happyShift action_46
action_72 (31) = happyShift action_47
action_72 _ = happyReduce_21

action_73 (30) = happyShift action_46
action_73 (31) = happyShift action_47
action_73 _ = happyReduce_20

action_74 (30) = happyShift action_46
action_74 (31) = happyShift action_47
action_74 _ = happyReduce_19

action_75 (30) = happyShift action_46
action_75 (31) = happyShift action_47
action_75 _ = happyReduce_18

action_76 (32) = happyShift action_61
action_76 (33) = happyShift action_62
action_76 _ = happyReduce_25

action_77 (32) = happyShift action_61
action_77 (33) = happyShift action_62
action_77 _ = happyReduce_24

action_78 (30) = happyShift action_46
action_78 (31) = happyShift action_47
action_78 (48) = happyShift action_97
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_50

action_80 (61) = happyShift action_12
action_80 (16) = happyGoto action_96
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (31) = happyShift action_8
action_81 (34) = happyShift action_9
action_81 (59) = happyShift action_10
action_81 (60) = happyShift action_11
action_81 (61) = happyShift action_12
action_81 (62) = happyShift action_13
action_81 (12) = happyGoto action_95
action_81 (13) = happyGoto action_3
action_81 (14) = happyGoto action_4
action_81 (15) = happyGoto action_5
action_81 (16) = happyGoto action_6
action_81 (17) = happyGoto action_7
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (31) = happyShift action_8
action_82 (34) = happyShift action_9
action_82 (44) = happyShift action_23
action_82 (59) = happyShift action_10
action_82 (60) = happyShift action_11
action_82 (61) = happyShift action_12
action_82 (62) = happyShift action_13
action_82 (9) = happyGoto action_94
action_82 (10) = happyGoto action_19
action_82 (11) = happyGoto action_20
action_82 (12) = happyGoto action_45
action_82 (13) = happyGoto action_3
action_82 (14) = happyGoto action_4
action_82 (15) = happyGoto action_5
action_82 (16) = happyGoto action_6
action_82 (17) = happyGoto action_7
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (31) = happyShift action_8
action_83 (34) = happyShift action_9
action_83 (44) = happyShift action_23
action_83 (59) = happyShift action_10
action_83 (60) = happyShift action_11
action_83 (61) = happyShift action_12
action_83 (62) = happyShift action_13
action_83 (9) = happyGoto action_93
action_83 (10) = happyGoto action_19
action_83 (11) = happyGoto action_20
action_83 (12) = happyGoto action_45
action_83 (13) = happyGoto action_3
action_83 (14) = happyGoto action_4
action_83 (15) = happyGoto action_5
action_83 (16) = happyGoto action_6
action_83 (17) = happyGoto action_7
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_57

action_85 _ = happyReduce_40

action_86 _ = happyReduce_39

action_87 (31) = happyShift action_8
action_87 (34) = happyShift action_9
action_87 (35) = happyShift action_92
action_87 (59) = happyShift action_10
action_87 (60) = happyShift action_11
action_87 (61) = happyShift action_12
action_87 (62) = happyShift action_13
action_87 (12) = happyGoto action_90
action_87 (13) = happyGoto action_3
action_87 (14) = happyGoto action_4
action_87 (15) = happyGoto action_5
action_87 (16) = happyGoto action_6
action_87 (17) = happyGoto action_7
action_87 (29) = happyGoto action_91
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (31) = happyShift action_8
action_88 (34) = happyShift action_9
action_88 (59) = happyShift action_10
action_88 (60) = happyShift action_11
action_88 (61) = happyShift action_12
action_88 (62) = happyShift action_13
action_88 (12) = happyGoto action_89
action_88 (13) = happyGoto action_3
action_88 (14) = happyGoto action_4
action_88 (15) = happyGoto action_5
action_88 (16) = happyGoto action_6
action_88 (17) = happyGoto action_7
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (30) = happyShift action_46
action_89 (31) = happyShift action_47
action_89 (48) = happyShift action_105
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (30) = happyShift action_46
action_90 (31) = happyShift action_47
action_90 _ = happyReduce_61

action_91 (35) = happyShift action_103
action_91 (49) = happyShift action_104
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_59

action_93 (35) = happyShift action_102
action_93 (42) = happyShift action_54
action_93 (43) = happyShift action_55
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (35) = happyShift action_101
action_94 (42) = happyShift action_54
action_94 (43) = happyShift action_55
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (30) = happyShift action_46
action_95 (31) = happyShift action_47
action_95 (35) = happyShift action_100
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (35) = happyShift action_99
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_49

action_98 _ = happyReduce_11

action_99 (48) = happyShift action_110
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (48) = happyShift action_109
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (57) = happyShift action_27
action_101 (18) = happyGoto action_108
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (57) = happyShift action_27
action_102 (18) = happyGoto action_107
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_58

action_104 (31) = happyShift action_8
action_104 (34) = happyShift action_9
action_104 (59) = happyShift action_10
action_104 (60) = happyShift action_11
action_104 (61) = happyShift action_12
action_104 (62) = happyShift action_13
action_104 (12) = happyGoto action_106
action_104 (13) = happyGoto action_3
action_104 (14) = happyGoto action_4
action_104 (15) = happyGoto action_5
action_104 (16) = happyGoto action_6
action_104 (17) = happyGoto action_7
action_104 _ = happyFail (happyExpListPerState 104)

action_105 _ = happyReduce_54

action_106 (30) = happyShift action_46
action_106 (31) = happyShift action_47
action_106 _ = happyReduce_60

action_107 (51) = happyShift action_111
action_107 _ = happyReduce_51

action_108 _ = happyReduce_53

action_109 _ = happyReduce_55

action_110 _ = happyReduce_56

action_111 (57) = happyShift action_27
action_111 (18) = happyGoto action_112
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_52

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn4
		 (Expr happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn4
		 (ExprL happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (Vars happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn4
		 (Bloco happy_var_1
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
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn7
		 (map(\x -> x:#: (happy_var_1, 0)) happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  9 happyReduction_13
happyReduction_13 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Or happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (And happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  10 happyReduction_16
happyReduction_16 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Not happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  10 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (Rel happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  11 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Req happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  11 happyReduction_19
happyReduction_19 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rdif happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rle happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  11 happyReduction_21
happyReduction_21 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rlt happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  11 happyReduction_22
happyReduction_22 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rge happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rgt happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  12 happyReduction_24
happyReduction_24 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Add happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  12 happyReduction_25
happyReduction_25 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  12 happyReduction_26
happyReduction_26 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  13 happyReduction_27
happyReduction_27 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  13 happyReduction_28
happyReduction_28 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Div happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  13 happyReduction_29
happyReduction_29 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  14 happyReduction_30
happyReduction_30 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn14
		 (Const happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (happy_var_2
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  14 happyReduction_32
happyReduction_32 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (Neg happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  14 happyReduction_33
happyReduction_33 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn14
		 (IdVar happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  14 happyReduction_34
happyReduction_34 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (Lit happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  15 happyReduction_35
happyReduction_35 (HappyTerminal (LIT happy_var_1))
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  16 happyReduction_36
happyReduction_36 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  17 happyReduction_37
happyReduction_37 (HappyTerminal (NUMINT happy_var_1))
	 =  HappyAbsSyn17
		 (CInt happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  17 happyReduction_38
happyReduction_38 (HappyTerminal (NUMDOUBLE happy_var_1))
	 =  HappyAbsSyn17
		 (CDouble happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  18 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  19 happyReduction_40
happyReduction_40 (HappyAbsSyn20  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  19 happyReduction_41
happyReduction_41 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 ([happy_var_1]
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  20 happyReduction_42
happyReduction_42 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  20 happyReduction_43
happyReduction_43 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  20 happyReduction_44
happyReduction_44 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  20 happyReduction_45
happyReduction_45 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  20 happyReduction_46
happyReduction_46 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  20 happyReduction_47
happyReduction_47 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  20 happyReduction_48
happyReduction_48 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  21 happyReduction_49
happyReduction_49 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn21
		 (Ret (Just happy_var_2)
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  21 happyReduction_50
happyReduction_50 _
	_
	 =  HappyAbsSyn21
		 (Ret Nothing
	)

happyReduce_51 = happyReduce 5 22 happyReduction_51
happyReduction_51 ((HappyAbsSyn18  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (If happy_var_3 happy_var_5 []
	) `HappyStk` happyRest

happyReduce_52 = happyReduce 7 22 happyReduction_52
happyReduction_52 ((HappyAbsSyn18  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (If happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_53 = happyReduce 5 23 happyReduction_53
happyReduction_53 ((HappyAbsSyn18  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 4 24 happyReduction_54
happyReduction_54 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (Atrib happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_55 = happyReduce 5 25 happyReduction_55
happyReduction_55 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (Imp happy_var_3
	) `HappyStk` happyRest

happyReduce_56 = happyReduce 5 26 happyReduction_56
happyReduction_56 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (Leitura happy_var_3
	) `HappyStk` happyRest

happyReduce_57 = happySpecReduce_2  27 happyReduction_57
happyReduction_57 _
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_1
	)
happyReduction_57 _ _  = notHappyAtAll 

happyReduce_58 = happyReduce 4 28 happyReduction_58
happyReduction_58 (_ `HappyStk`
	(HappyAbsSyn29  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (Proc happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_59 = happySpecReduce_3  28 happyReduction_59
happyReduction_59 _
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn28
		 (Proc happy_var_1 []
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  29 happyReduction_60
happyReduction_60 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  29 happyReduction_61
happyReduction_61 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn29
		 ([happy_var_1]
	)
happyReduction_61 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 63 63 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ADD -> cont 30;
	SUB -> cont 31;
	MUL -> cont 32;
	DIV -> cont 33;
	LPAR -> cont 34;
	RPAR -> cont 35;
	REQ -> cont 36;
	RNE -> cont 37;
	RLE -> cont 38;
	RLT -> cont 39;
	RGE -> cont 40;
	RGT -> cont 41;
	OR -> cont 42;
	AND -> cont 43;
	NOT -> cont 44;
	DECINT -> cont 45;
	DECFLOAT -> cont 46;
	DECSTRING -> cont 47;
	FIMLINHA -> cont 48;
	VIRGULA -> cont 49;
	IF -> cont 50;
	ELSE -> cont 51;
	WHILE -> cont 52;
	ATRIB -> cont 53;
	ESCR -> cont 54;
	LEIT -> cont 55;
	RET -> cont 56;
	LBRACK -> cont 57;
	RBRACK -> cont 58;
	NUMDOUBLE happy_dollar_dollar -> cont 59;
	NUMINT happy_dollar_dollar -> cont 60;
	ID happy_dollar_dollar -> cont 61;
	LIT happy_dollar_dollar -> cont 62;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 63 tk tks = happyError' (tks, explist)
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
