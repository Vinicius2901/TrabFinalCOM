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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,338) ([0,0,49170,53251,3,0,144,0,30,0,192,0,0,0,6144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4608,0,960,0,36864,0,7680,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,16,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,32768,2017,0,0,0,0,0,0,0,576,8,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7488,2,0,0,4096,0,0,0,20480,151,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,512,0,0,0,4096,0,0,0,32768,0,0,0,0,4,0,0,0,36,32784,7,0,256,0,0,0,0,0,0,0,3072,63,0,0,16384,2,30720,0,0,18,49152,3,0,144,0,30,0,1152,0,240,0,9216,0,1920,0,8192,1,15360,0,0,9,57344,1,0,72,0,15,0,576,8,120,0,4608,64,960,0,0,7168,0,0,0,0,0,0,0,70,0,0,0,0,0,0,0,2304,0,480,0,18432,0,3840,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,1,0,0,0,12,0,0,0,96,0,0,0,768,0,0,0,6144,0,0,0,49152,0,0,0,0,24,0,0,0,192,0,0,0,6400,0,480,0,3072,8192,0,0,0,0,0,0,0,0,0,1,0,144,0,30,0,1152,16,240,0,9216,128,1920,0,0,0,0,0,0,0,0,0,0,0,0,0,0,576,0,120,0,768,2048,0,0,0,385,0,0,0,3080,0,0,0,70,0,0,0,512,0,0,0,0,0,0,0,3072,0,0,0,0,4,2,0,0,0,0,0,0,0,0,0,0,1152,0,240,0,0,4096,0,0,0,32768,0,0,0,0,2048,0,0,0,16384,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,48,0,0,0,0,0,8,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Inicio","Tipo","TipoRet","DeclParams","Param","Declaracoes","Declaracao","ListaId","ExprL","TermL","ExprR","Expr","Term","Factor","Lit","IdVar","TConst","Bloco","ListaCmd","Cmd","Retorno","CmdSe","CmdEnquanto","CmdAtrib","CmdEscrita","CmdLeitura","ChamadaProc","ChamaFunc","ListaParam","'+'","'-'","'*'","'/'","'('","')'","'=='","'/='","'<='","'<'","'>='","'>'","'||'","'&&'","'!'","'int'","'float'","'string'","'void'","';'","','","'if'","'else'","'while'","'='","'print'","'read'","'return'","'{'","'}'","NumDouble","NumInt","Id","Literal","%eof"]
        bit_start = st Prelude.* 67
        bit_end = (st Prelude.+ 1) Prelude.* 67
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..66]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (34) = happyShift action_8
action_0 (37) = happyShift action_9
action_0 (47) = happyShift action_23
action_0 (48) = happyShift action_24
action_0 (49) = happyShift action_25
action_0 (50) = happyShift action_26
action_0 (61) = happyShift action_27
action_0 (63) = happyShift action_10
action_0 (64) = happyShift action_11
action_0 (65) = happyShift action_12
action_0 (66) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_15
action_0 (7) = happyGoto action_16
action_0 (8) = happyGoto action_17
action_0 (12) = happyGoto action_18
action_0 (13) = happyGoto action_19
action_0 (14) = happyGoto action_20
action_0 (15) = happyGoto action_21
action_0 (16) = happyGoto action_3
action_0 (17) = happyGoto action_4
action_0 (18) = happyGoto action_5
action_0 (19) = happyGoto action_6
action_0 (20) = happyGoto action_7
action_0 (21) = happyGoto action_22
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (34) = happyShift action_8
action_1 (37) = happyShift action_9
action_1 (63) = happyShift action_10
action_1 (64) = happyShift action_11
action_1 (65) = happyShift action_12
action_1 (66) = happyShift action_13
action_1 (15) = happyGoto action_2
action_1 (16) = happyGoto action_3
action_1 (17) = happyGoto action_4
action_1 (18) = happyGoto action_5
action_1 (19) = happyGoto action_6
action_1 (20) = happyGoto action_7
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (33) = happyShift action_47
action_2 (34) = happyShift action_48
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (35) = happyShift action_61
action_3 (36) = happyShift action_62
action_3 _ = happyReduce_31

action_4 _ = happyReduce_34

action_5 _ = happyReduce_39

action_6 _ = happyReduce_38

action_7 _ = happyReduce_35

action_8 (34) = happyShift action_8
action_8 (37) = happyShift action_9
action_8 (63) = happyShift action_10
action_8 (64) = happyShift action_11
action_8 (65) = happyShift action_12
action_8 (66) = happyShift action_13
action_8 (17) = happyGoto action_60
action_8 (18) = happyGoto action_5
action_8 (19) = happyGoto action_6
action_8 (20) = happyGoto action_7
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (34) = happyShift action_8
action_9 (37) = happyShift action_9
action_9 (63) = happyShift action_10
action_9 (64) = happyShift action_11
action_9 (65) = happyShift action_12
action_9 (66) = happyShift action_13
action_9 (15) = happyGoto action_59
action_9 (16) = happyGoto action_3
action_9 (17) = happyGoto action_4
action_9 (18) = happyGoto action_5
action_9 (19) = happyGoto action_6
action_9 (20) = happyGoto action_7
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_43

action_11 _ = happyReduce_42

action_12 _ = happyReduce_41

action_13 _ = happyReduce_40

action_14 (67) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (65) = happyShift action_12
action_15 (19) = happyGoto action_58
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (53) = happyShift action_57
action_16 _ = happyReduce_4

action_17 _ = happyReduce_11

action_18 (45) = happyShift action_55
action_18 (46) = happyShift action_56
action_18 _ = happyReduce_2

action_19 _ = happyReduce_20

action_20 _ = happyReduce_22

action_21 (33) = happyShift action_47
action_21 (34) = happyShift action_48
action_21 (39) = happyShift action_49
action_21 (40) = happyShift action_50
action_21 (41) = happyShift action_51
action_21 (42) = happyShift action_52
action_21 (43) = happyShift action_53
action_21 (44) = happyShift action_54
action_21 _ = happyReduce_1

action_22 _ = happyReduce_3

action_23 (34) = happyShift action_8
action_23 (37) = happyShift action_9
action_23 (47) = happyShift action_23
action_23 (63) = happyShift action_10
action_23 (64) = happyShift action_11
action_23 (65) = happyShift action_12
action_23 (66) = happyShift action_13
action_23 (13) = happyGoto action_45
action_23 (14) = happyGoto action_20
action_23 (15) = happyGoto action_46
action_23 (16) = happyGoto action_3
action_23 (17) = happyGoto action_4
action_23 (18) = happyGoto action_5
action_23 (19) = happyGoto action_6
action_23 (20) = happyGoto action_7
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_5

action_25 _ = happyReduce_6

action_26 _ = happyReduce_7

action_27 (54) = happyShift action_39
action_27 (56) = happyShift action_40
action_27 (58) = happyShift action_41
action_27 (59) = happyShift action_42
action_27 (60) = happyShift action_43
action_27 (65) = happyShift action_44
action_27 (19) = happyGoto action_28
action_27 (22) = happyGoto action_29
action_27 (23) = happyGoto action_30
action_27 (24) = happyGoto action_31
action_27 (25) = happyGoto action_32
action_27 (26) = happyGoto action_33
action_27 (27) = happyGoto action_34
action_27 (28) = happyGoto action_35
action_27 (29) = happyGoto action_36
action_27 (30) = happyGoto action_37
action_27 (31) = happyGoto action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (57) = happyShift action_87
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (54) = happyShift action_39
action_29 (56) = happyShift action_40
action_29 (58) = happyShift action_41
action_29 (59) = happyShift action_42
action_29 (60) = happyShift action_43
action_29 (62) = happyShift action_86
action_29 (65) = happyShift action_44
action_29 (19) = happyGoto action_28
action_29 (23) = happyGoto action_85
action_29 (24) = happyGoto action_31
action_29 (25) = happyGoto action_32
action_29 (26) = happyGoto action_33
action_29 (27) = happyGoto action_34
action_29 (28) = happyGoto action_35
action_29 (29) = happyGoto action_36
action_29 (30) = happyGoto action_37
action_29 (31) = happyGoto action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_46

action_31 _ = happyReduce_53

action_32 _ = happyReduce_47

action_33 _ = happyReduce_48

action_34 _ = happyReduce_49

action_35 _ = happyReduce_50

action_36 _ = happyReduce_51

action_37 _ = happyReduce_52

action_38 (52) = happyShift action_84
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (37) = happyShift action_83
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (37) = happyShift action_82
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (37) = happyShift action_81
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (37) = happyShift action_80
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (34) = happyShift action_8
action_43 (37) = happyShift action_9
action_43 (52) = happyShift action_79
action_43 (63) = happyShift action_10
action_43 (64) = happyShift action_11
action_43 (65) = happyShift action_12
action_43 (66) = happyShift action_13
action_43 (15) = happyGoto action_78
action_43 (16) = happyGoto action_3
action_43 (17) = happyGoto action_4
action_43 (18) = happyGoto action_5
action_43 (19) = happyGoto action_6
action_43 (20) = happyGoto action_7
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (37) = happyShift action_77
action_44 _ = happyReduce_41

action_45 _ = happyReduce_21

action_46 (33) = happyShift action_47
action_46 (34) = happyShift action_48
action_46 (39) = happyShift action_49
action_46 (40) = happyShift action_50
action_46 (41) = happyShift action_51
action_46 (42) = happyShift action_52
action_46 (43) = happyShift action_53
action_46 (44) = happyShift action_54
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (34) = happyShift action_8
action_47 (37) = happyShift action_9
action_47 (63) = happyShift action_10
action_47 (64) = happyShift action_11
action_47 (65) = happyShift action_12
action_47 (66) = happyShift action_13
action_47 (16) = happyGoto action_76
action_47 (17) = happyGoto action_4
action_47 (18) = happyGoto action_5
action_47 (19) = happyGoto action_6
action_47 (20) = happyGoto action_7
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (34) = happyShift action_8
action_48 (37) = happyShift action_9
action_48 (63) = happyShift action_10
action_48 (64) = happyShift action_11
action_48 (65) = happyShift action_12
action_48 (66) = happyShift action_13
action_48 (16) = happyGoto action_75
action_48 (17) = happyGoto action_4
action_48 (18) = happyGoto action_5
action_48 (19) = happyGoto action_6
action_48 (20) = happyGoto action_7
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (34) = happyShift action_8
action_49 (37) = happyShift action_9
action_49 (63) = happyShift action_10
action_49 (64) = happyShift action_11
action_49 (65) = happyShift action_12
action_49 (66) = happyShift action_13
action_49 (15) = happyGoto action_74
action_49 (16) = happyGoto action_3
action_49 (17) = happyGoto action_4
action_49 (18) = happyGoto action_5
action_49 (19) = happyGoto action_6
action_49 (20) = happyGoto action_7
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (34) = happyShift action_8
action_50 (37) = happyShift action_9
action_50 (63) = happyShift action_10
action_50 (64) = happyShift action_11
action_50 (65) = happyShift action_12
action_50 (66) = happyShift action_13
action_50 (15) = happyGoto action_73
action_50 (16) = happyGoto action_3
action_50 (17) = happyGoto action_4
action_50 (18) = happyGoto action_5
action_50 (19) = happyGoto action_6
action_50 (20) = happyGoto action_7
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (34) = happyShift action_8
action_51 (37) = happyShift action_9
action_51 (63) = happyShift action_10
action_51 (64) = happyShift action_11
action_51 (65) = happyShift action_12
action_51 (66) = happyShift action_13
action_51 (15) = happyGoto action_72
action_51 (16) = happyGoto action_3
action_51 (17) = happyGoto action_4
action_51 (18) = happyGoto action_5
action_51 (19) = happyGoto action_6
action_51 (20) = happyGoto action_7
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (34) = happyShift action_8
action_52 (37) = happyShift action_9
action_52 (63) = happyShift action_10
action_52 (64) = happyShift action_11
action_52 (65) = happyShift action_12
action_52 (66) = happyShift action_13
action_52 (15) = happyGoto action_71
action_52 (16) = happyGoto action_3
action_52 (17) = happyGoto action_4
action_52 (18) = happyGoto action_5
action_52 (19) = happyGoto action_6
action_52 (20) = happyGoto action_7
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (34) = happyShift action_8
action_53 (37) = happyShift action_9
action_53 (63) = happyShift action_10
action_53 (64) = happyShift action_11
action_53 (65) = happyShift action_12
action_53 (66) = happyShift action_13
action_53 (15) = happyGoto action_70
action_53 (16) = happyGoto action_3
action_53 (17) = happyGoto action_4
action_53 (18) = happyGoto action_5
action_53 (19) = happyGoto action_6
action_53 (20) = happyGoto action_7
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (34) = happyShift action_8
action_54 (37) = happyShift action_9
action_54 (63) = happyShift action_10
action_54 (64) = happyShift action_11
action_54 (65) = happyShift action_12
action_54 (66) = happyShift action_13
action_54 (15) = happyGoto action_69
action_54 (16) = happyGoto action_3
action_54 (17) = happyGoto action_4
action_54 (18) = happyGoto action_5
action_54 (19) = happyGoto action_6
action_54 (20) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (34) = happyShift action_8
action_55 (37) = happyShift action_9
action_55 (47) = happyShift action_23
action_55 (63) = happyShift action_10
action_55 (64) = happyShift action_11
action_55 (65) = happyShift action_12
action_55 (66) = happyShift action_13
action_55 (13) = happyGoto action_68
action_55 (14) = happyGoto action_20
action_55 (15) = happyGoto action_46
action_55 (16) = happyGoto action_3
action_55 (17) = happyGoto action_4
action_55 (18) = happyGoto action_5
action_55 (19) = happyGoto action_6
action_55 (20) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (34) = happyShift action_8
action_56 (37) = happyShift action_9
action_56 (47) = happyShift action_23
action_56 (63) = happyShift action_10
action_56 (64) = happyShift action_11
action_56 (65) = happyShift action_12
action_56 (66) = happyShift action_13
action_56 (13) = happyGoto action_67
action_56 (14) = happyGoto action_20
action_56 (15) = happyGoto action_46
action_56 (16) = happyGoto action_3
action_56 (17) = happyGoto action_4
action_56 (18) = happyGoto action_5
action_56 (19) = happyGoto action_6
action_56 (20) = happyGoto action_7
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (48) = happyShift action_24
action_57 (49) = happyShift action_25
action_57 (50) = happyShift action_26
action_57 (5) = happyGoto action_15
action_57 (8) = happyGoto action_66
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_12

action_59 (33) = happyShift action_47
action_59 (34) = happyShift action_48
action_59 (38) = happyShift action_65
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_37

action_61 (34) = happyShift action_8
action_61 (37) = happyShift action_9
action_61 (63) = happyShift action_10
action_61 (64) = happyShift action_11
action_61 (65) = happyShift action_12
action_61 (66) = happyShift action_13
action_61 (17) = happyGoto action_64
action_61 (18) = happyGoto action_5
action_61 (19) = happyGoto action_6
action_61 (20) = happyGoto action_7
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (34) = happyShift action_8
action_62 (37) = happyShift action_9
action_62 (63) = happyShift action_10
action_62 (64) = happyShift action_11
action_62 (65) = happyShift action_12
action_62 (66) = happyShift action_13
action_62 (17) = happyGoto action_63
action_62 (18) = happyGoto action_5
action_62 (19) = happyGoto action_6
action_62 (20) = happyGoto action_7
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_33

action_64 _ = happyReduce_32

action_65 _ = happyReduce_36

action_66 _ = happyReduce_10

action_67 _ = happyReduce_19

action_68 _ = happyReduce_18

action_69 (33) = happyShift action_47
action_69 (34) = happyShift action_48
action_69 _ = happyReduce_28

action_70 (33) = happyShift action_47
action_70 (34) = happyShift action_48
action_70 _ = happyReduce_27

action_71 (33) = happyShift action_47
action_71 (34) = happyShift action_48
action_71 _ = happyReduce_26

action_72 (33) = happyShift action_47
action_72 (34) = happyShift action_48
action_72 _ = happyReduce_25

action_73 (33) = happyShift action_47
action_73 (34) = happyShift action_48
action_73 _ = happyReduce_24

action_74 (33) = happyShift action_47
action_74 (34) = happyShift action_48
action_74 _ = happyReduce_23

action_75 (35) = happyShift action_61
action_75 (36) = happyShift action_62
action_75 _ = happyReduce_30

action_76 (35) = happyShift action_61
action_76 (36) = happyShift action_62
action_76 _ = happyReduce_29

action_77 (34) = happyShift action_8
action_77 (37) = happyShift action_9
action_77 (38) = happyShift action_96
action_77 (63) = happyShift action_10
action_77 (64) = happyShift action_11
action_77 (65) = happyShift action_12
action_77 (66) = happyShift action_13
action_77 (15) = happyGoto action_94
action_77 (16) = happyGoto action_3
action_77 (17) = happyGoto action_4
action_77 (18) = happyGoto action_5
action_77 (19) = happyGoto action_6
action_77 (20) = happyGoto action_7
action_77 (32) = happyGoto action_95
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (33) = happyShift action_47
action_78 (34) = happyShift action_48
action_78 (52) = happyShift action_93
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_55

action_80 (65) = happyShift action_12
action_80 (19) = happyGoto action_92
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (34) = happyShift action_8
action_81 (37) = happyShift action_9
action_81 (63) = happyShift action_10
action_81 (64) = happyShift action_11
action_81 (65) = happyShift action_12
action_81 (66) = happyShift action_13
action_81 (15) = happyGoto action_91
action_81 (16) = happyGoto action_3
action_81 (17) = happyGoto action_4
action_81 (18) = happyGoto action_5
action_81 (19) = happyGoto action_6
action_81 (20) = happyGoto action_7
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (34) = happyShift action_8
action_82 (37) = happyShift action_9
action_82 (47) = happyShift action_23
action_82 (63) = happyShift action_10
action_82 (64) = happyShift action_11
action_82 (65) = happyShift action_12
action_82 (66) = happyShift action_13
action_82 (12) = happyGoto action_90
action_82 (13) = happyGoto action_19
action_82 (14) = happyGoto action_20
action_82 (15) = happyGoto action_46
action_82 (16) = happyGoto action_3
action_82 (17) = happyGoto action_4
action_82 (18) = happyGoto action_5
action_82 (19) = happyGoto action_6
action_82 (20) = happyGoto action_7
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (34) = happyShift action_8
action_83 (37) = happyShift action_9
action_83 (47) = happyShift action_23
action_83 (63) = happyShift action_10
action_83 (64) = happyShift action_11
action_83 (65) = happyShift action_12
action_83 (66) = happyShift action_13
action_83 (12) = happyGoto action_89
action_83 (13) = happyGoto action_19
action_83 (14) = happyGoto action_20
action_83 (15) = happyGoto action_46
action_83 (16) = happyGoto action_3
action_83 (17) = happyGoto action_4
action_83 (18) = happyGoto action_5
action_83 (19) = happyGoto action_6
action_83 (20) = happyGoto action_7
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_62

action_85 _ = happyReduce_45

action_86 _ = happyReduce_44

action_87 (34) = happyShift action_8
action_87 (37) = happyShift action_9
action_87 (63) = happyShift action_10
action_87 (64) = happyShift action_11
action_87 (65) = happyShift action_12
action_87 (66) = happyShift action_13
action_87 (15) = happyGoto action_88
action_87 (16) = happyGoto action_3
action_87 (17) = happyGoto action_4
action_87 (18) = happyGoto action_5
action_87 (19) = happyGoto action_6
action_87 (20) = happyGoto action_7
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (33) = happyShift action_47
action_88 (34) = happyShift action_48
action_88 (52) = happyShift action_103
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (38) = happyShift action_102
action_89 (45) = happyShift action_55
action_89 (46) = happyShift action_56
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (38) = happyShift action_101
action_90 (45) = happyShift action_55
action_90 (46) = happyShift action_56
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (33) = happyShift action_47
action_91 (34) = happyShift action_48
action_91 (38) = happyShift action_100
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (38) = happyShift action_99
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_54

action_94 (33) = happyShift action_47
action_94 (34) = happyShift action_48
action_94 _ = happyReduce_66

action_95 (38) = happyShift action_97
action_95 (53) = happyShift action_98
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_64

action_97 _ = happyReduce_63

action_98 (34) = happyShift action_8
action_98 (37) = happyShift action_9
action_98 (63) = happyShift action_10
action_98 (64) = happyShift action_11
action_98 (65) = happyShift action_12
action_98 (66) = happyShift action_13
action_98 (15) = happyGoto action_108
action_98 (16) = happyGoto action_3
action_98 (17) = happyGoto action_4
action_98 (18) = happyGoto action_5
action_98 (19) = happyGoto action_6
action_98 (20) = happyGoto action_7
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (52) = happyShift action_107
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (52) = happyShift action_106
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (61) = happyShift action_27
action_101 (21) = happyGoto action_105
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (61) = happyShift action_27
action_102 (21) = happyGoto action_104
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_59

action_104 (55) = happyShift action_109
action_104 _ = happyReduce_56

action_105 _ = happyReduce_58

action_106 _ = happyReduce_60

action_107 _ = happyReduce_61

action_108 (33) = happyShift action_47
action_108 (34) = happyShift action_48
action_108 _ = happyReduce_65

action_109 (61) = happyShift action_27
action_109 (21) = happyGoto action_110
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_57

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn4
		 (Expr happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn4
		 (ExprL happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn4
		 (Bloco happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn4
		 (DeclParams happy_var_1
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

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  8 happyReduction_12
happyReduction_12 (HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_2 :#: (happy_var_1, 0)
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  9 happyReduction_13
happyReduction_13 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  9 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  10 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (map(\x -> x:#: (happy_var_1, 0)) happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  11 happyReduction_16
happyReduction_16 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  11 happyReduction_17
happyReduction_17 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  12 happyReduction_18
happyReduction_18 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Or happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  12 happyReduction_19
happyReduction_19 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  13 happyReduction_21
happyReduction_21 (HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Not happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  13 happyReduction_22
happyReduction_22 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (Rel happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  14 happyReduction_23
happyReduction_23 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (Req happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  14 happyReduction_24
happyReduction_24 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (Rdif happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  14 happyReduction_25
happyReduction_25 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (Rle happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  14 happyReduction_26
happyReduction_26 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (Rlt happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  14 happyReduction_27
happyReduction_27 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (Rge happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (Rgt happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  15 happyReduction_29
happyReduction_29 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Add happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  15 happyReduction_30
happyReduction_30 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  15 happyReduction_31
happyReduction_31 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  16 happyReduction_32
happyReduction_32 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  16 happyReduction_33
happyReduction_33 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Div happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  16 happyReduction_34
happyReduction_34 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  17 happyReduction_35
happyReduction_35 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn17
		 (Const happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  17 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  17 happyReduction_37
happyReduction_37 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (Neg happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  17 happyReduction_38
happyReduction_38 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn17
		 (IdVar happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  17 happyReduction_39
happyReduction_39 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (Lit happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  18 happyReduction_40
happyReduction_40 (HappyTerminal (LIT happy_var_1))
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  19 happyReduction_41
happyReduction_41 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  20 happyReduction_42
happyReduction_42 (HappyTerminal (NUMINT happy_var_1))
	 =  HappyAbsSyn20
		 (CInt happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  20 happyReduction_43
happyReduction_43 (HappyTerminal (NUMDOUBLE happy_var_1))
	 =  HappyAbsSyn20
		 (CDouble happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  21 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn22  happy_var_2)
	_
	 =  HappyAbsSyn21
		 (happy_var_2
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  22 happyReduction_45
happyReduction_45 (HappyAbsSyn23  happy_var_2)
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  22 happyReduction_46
happyReduction_46 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn22
		 ([happy_var_1]
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  23 happyReduction_47
happyReduction_47 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  23 happyReduction_48
happyReduction_48 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  23 happyReduction_49
happyReduction_49 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  23 happyReduction_50
happyReduction_50 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  23 happyReduction_51
happyReduction_51 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  23 happyReduction_52
happyReduction_52 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  23 happyReduction_53
happyReduction_53 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  24 happyReduction_54
happyReduction_54 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn24
		 (Ret (Just happy_var_2)
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_2  24 happyReduction_55
happyReduction_55 _
	_
	 =  HappyAbsSyn24
		 (Ret Nothing
	)

happyReduce_56 = happyReduce 5 25 happyReduction_56
happyReduction_56 ((HappyAbsSyn21  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (If happy_var_3 happy_var_5 []
	) `HappyStk` happyRest

happyReduce_57 = happyReduce 7 25 happyReduction_57
happyReduction_57 ((HappyAbsSyn21  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (If happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_58 = happyReduce 5 26 happyReduction_58
happyReduction_58 ((HappyAbsSyn21  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_59 = happyReduce 4 27 happyReduction_59
happyReduction_59 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (Atrib happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_60 = happyReduce 5 28 happyReduction_60
happyReduction_60 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (Imp happy_var_3
	) `HappyStk` happyRest

happyReduce_61 = happyReduce 5 29 happyReduction_61
happyReduction_61 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn29
		 (Leitura happy_var_3
	) `HappyStk` happyRest

happyReduce_62 = happySpecReduce_2  30 happyReduction_62
happyReduction_62 _
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1
	)
happyReduction_62 _ _  = notHappyAtAll 

happyReduce_63 = happyReduce 4 31 happyReduction_63
happyReduction_63 (_ `HappyStk`
	(HappyAbsSyn32  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (Proc happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_64 = happySpecReduce_3  31 happyReduction_64
happyReduction_64 _
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn31
		 (Proc happy_var_1 []
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_3  32 happyReduction_65
happyReduction_65 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_65 _ _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  32 happyReduction_66
happyReduction_66 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn32
		 ([happy_var_1]
	)
happyReduction_66 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 67 67 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ADD -> cont 33;
	SUB -> cont 34;
	MUL -> cont 35;
	DIV -> cont 36;
	LPAR -> cont 37;
	RPAR -> cont 38;
	REQ -> cont 39;
	RNE -> cont 40;
	RLE -> cont 41;
	RLT -> cont 42;
	RGE -> cont 43;
	RGT -> cont 44;
	OR -> cont 45;
	AND -> cont 46;
	NOT -> cont 47;
	DECINT -> cont 48;
	DECFLOAT -> cont 49;
	DECSTRING -> cont 50;
	DECVOID -> cont 51;
	FIMLINHA -> cont 52;
	VIRGULA -> cont 53;
	IF -> cont 54;
	ELSE -> cont 55;
	WHILE -> cont 56;
	ATRIB -> cont 57;
	ESCR -> cont 58;
	LEIT -> cont 59;
	RET -> cont 60;
	LBRACK -> cont 61;
	RBRACK -> cont 62;
	NUMDOUBLE happy_dollar_dollar -> cont 63;
	NUMINT happy_dollar_dollar -> cont 64;
	ID happy_dollar_dollar -> cont 65;
	LIT happy_dollar_dollar -> cont 66;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 67 tk tks = happyError' (tks, explist)
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
