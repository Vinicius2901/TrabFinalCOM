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
happyExpList = Happy_Data_Array.listArray (0,425) ([0,0,0,32828,0,0,0,3840,0,0,0,0,0,0,0,0,240,2,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7168,2165,0,0,0,0,2,0,0,20928,135,0,0,0,0,0,0,0,2048,0,0,0,16384,605,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,512,0,0,0,32768,0,0,0,0,32,0,0,0,2048,0,0,0,16384,2,30721,0,0,128,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,7169,0,0,0,100,32768,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1536,4096,0,0,0,6,0,0,0,0,0,0,0,36864,0,7680,0,0,36,32771,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,32,0,36864,0,7680,0,0,32804,32768,7,0,2304,32,480,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,57344,1,0,0,0,0,0,0,0,2421,0,0,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,96,256,0,0,0,385,0,0,0,0,0,0,0,0,0,0,0,24576,504,0,0,0,144,2,30,0,16384,96,0,0,32768,17,0,0,0,1024,0,0,0,36864,1,7680,0,0,70,0,0,0,4096,0,0,0,0,4,0,0,0,0,0,0,0,9216,0,1920,0,0,9,57344,1,0,576,0,120,0,36864,0,7680,0,0,0,0,0,0,4096,2048,0,0,24576,0,0,0,0,0,0,0,0,0,0,512,0,0,16,8,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,8,0,0,28672,0,0,0,0,0,0,0,0,0,0,0,0,9,57344,1,0,384,0,0,0,24576,0,0,0,0,0,0,0,0,0,0,0,0,16384,2,30720,0,0,144,0,30,0,0,0,0,0,0,16,8,0,0,0,0,0,0,0,16384,0,0,0,0,16,0,0,0,0,8,0,16384,2050,30720,0,0,144,2,30,0,0,0,0,0,0,9,57344,1,0,576,0,120,0,36864,0,7680,0,0,36,32768,7,0,2304,0,480,0,16384,2,30720,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,2165,0,0,6,0,0,0,384,0,0,0,24576,0,0,0,0,24,0,0,0,1536,0,0,0,32768,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,96,0,0,0,0,0,0,0,0,0,0,0,0,0,20480,151,0,0,0,512,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Programa","Tipo","DeclFuncs","Func","TipoRet","DeclParams","Param","BlocoPrinc","Declaracoes","Declaracao","ListaId","Lit","IdVar","TConst","Bloco","ListaCmd","Cmd","Retorno","CmdSe","CmdEnquanto","CmdAtrib","CmdEscrita","CmdLeitura","ChamadaProc","ChamaFunc","ListaParam","ExprL","TermL","ExprR","Expr","Term","Factor","'+'","'-'","'*'","'/'","'('","')'","'=='","'/='","'<='","'<'","'>='","'>'","'||'","'&&'","'!'","'int'","'double'","'string'","'void'","';'","','","'if'","'else'","'while'","'='","'print'","'read'","'return'","'{'","'}'","NumDouble","NumInt","Id","Literal","%eof"]
        bit_start = st Prelude.* 70
        bit_end = (st Prelude.+ 1) Prelude.* 70
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..69]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (51) = happyShift action_6
action_0 (52) = happyShift action_7
action_0 (53) = happyShift action_8
action_0 (54) = happyShift action_9
action_0 (64) = happyShift action_12
action_0 (4) = happyGoto action_10
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (11) = happyGoto action_11
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (51) = happyShift action_6
action_1 (52) = happyShift action_7
action_1 (53) = happyShift action_8
action_1 (54) = happyShift action_9
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_10

action_3 (51) = happyShift action_6
action_3 (52) = happyShift action_7
action_3 (53) = happyShift action_8
action_3 (54) = happyShift action_9
action_3 (64) = happyShift action_12
action_3 (5) = happyGoto action_2
action_3 (7) = happyGoto action_34
action_3 (8) = happyGoto action_5
action_3 (11) = happyGoto action_35
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_7

action_5 (68) = happyShift action_33
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_3

action_7 _ = happyReduce_4

action_8 _ = happyReduce_5

action_9 _ = happyReduce_11

action_10 (70) = happyAccept
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_2

action_12 (51) = happyShift action_6
action_12 (52) = happyShift action_7
action_12 (53) = happyShift action_8
action_12 (57) = happyShift action_27
action_12 (59) = happyShift action_28
action_12 (61) = happyShift action_29
action_12 (62) = happyShift action_30
action_12 (63) = happyShift action_31
action_12 (68) = happyShift action_32
action_12 (5) = happyGoto action_13
action_12 (12) = happyGoto action_14
action_12 (13) = happyGoto action_15
action_12 (16) = happyGoto action_16
action_12 (19) = happyGoto action_17
action_12 (20) = happyGoto action_18
action_12 (21) = happyGoto action_19
action_12 (22) = happyGoto action_20
action_12 (23) = happyGoto action_21
action_12 (24) = happyGoto action_22
action_12 (25) = happyGoto action_23
action_12 (26) = happyGoto action_24
action_12 (27) = happyGoto action_25
action_12 (28) = happyGoto action_26
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (68) = happyShift action_63
action_13 (14) = happyGoto action_61
action_13 (16) = happyGoto action_62
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (51) = happyShift action_6
action_14 (52) = happyShift action_7
action_14 (53) = happyShift action_8
action_14 (57) = happyShift action_27
action_14 (59) = happyShift action_28
action_14 (61) = happyShift action_29
action_14 (62) = happyShift action_30
action_14 (63) = happyShift action_31
action_14 (68) = happyShift action_32
action_14 (5) = happyGoto action_13
action_14 (13) = happyGoto action_59
action_14 (16) = happyGoto action_16
action_14 (19) = happyGoto action_60
action_14 (20) = happyGoto action_18
action_14 (21) = happyGoto action_19
action_14 (22) = happyGoto action_20
action_14 (23) = happyGoto action_21
action_14 (24) = happyGoto action_22
action_14 (25) = happyGoto action_23
action_14 (26) = happyGoto action_24
action_14 (27) = happyGoto action_25
action_14 (28) = happyGoto action_26
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_18

action_16 (60) = happyShift action_58
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (57) = happyShift action_27
action_17 (59) = happyShift action_28
action_17 (61) = happyShift action_29
action_17 (62) = happyShift action_30
action_17 (63) = happyShift action_31
action_17 (65) = happyShift action_57
action_17 (68) = happyShift action_32
action_17 (16) = happyGoto action_16
action_17 (20) = happyGoto action_56
action_17 (21) = happyGoto action_19
action_17 (22) = happyGoto action_20
action_17 (23) = happyGoto action_21
action_17 (24) = happyGoto action_22
action_17 (25) = happyGoto action_23
action_17 (26) = happyGoto action_24
action_17 (27) = happyGoto action_25
action_17 (28) = happyGoto action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_28

action_19 _ = happyReduce_35

action_20 _ = happyReduce_29

action_21 _ = happyReduce_30

action_22 _ = happyReduce_31

action_23 _ = happyReduce_32

action_24 _ = happyReduce_33

action_25 _ = happyReduce_34

action_26 (55) = happyShift action_55
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (40) = happyShift action_54
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (40) = happyShift action_53
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (40) = happyShift action_52
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (40) = happyShift action_51
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (37) = happyShift action_44
action_31 (40) = happyShift action_45
action_31 (55) = happyShift action_46
action_31 (66) = happyShift action_47
action_31 (67) = happyShift action_48
action_31 (68) = happyShift action_49
action_31 (69) = happyShift action_50
action_31 (15) = happyGoto action_38
action_31 (16) = happyGoto action_39
action_31 (17) = happyGoto action_40
action_31 (33) = happyGoto action_41
action_31 (34) = happyGoto action_42
action_31 (35) = happyGoto action_43
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (40) = happyShift action_37
action_32 _ = happyReduce_23

action_33 (40) = happyShift action_36
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_6

action_35 _ = happyReduce_1

action_36 (41) = happyShift action_92
action_36 (51) = happyShift action_6
action_36 (52) = happyShift action_7
action_36 (53) = happyShift action_8
action_36 (5) = happyGoto action_89
action_36 (9) = happyGoto action_90
action_36 (10) = happyGoto action_91
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (37) = happyShift action_44
action_37 (40) = happyShift action_45
action_37 (41) = happyShift action_88
action_37 (66) = happyShift action_47
action_37 (67) = happyShift action_48
action_37 (68) = happyShift action_49
action_37 (69) = happyShift action_50
action_37 (15) = happyGoto action_38
action_37 (16) = happyGoto action_39
action_37 (17) = happyGoto action_40
action_37 (29) = happyGoto action_86
action_37 (33) = happyGoto action_87
action_37 (34) = happyGoto action_42
action_37 (35) = happyGoto action_43
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_70

action_39 _ = happyReduce_69

action_40 _ = happyReduce_66

action_41 (36) = happyShift action_83
action_41 (37) = happyShift action_84
action_41 (55) = happyShift action_85
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (38) = happyShift action_81
action_42 (39) = happyShift action_82
action_42 _ = happyReduce_62

action_43 _ = happyReduce_65

action_44 (37) = happyShift action_44
action_44 (40) = happyShift action_45
action_44 (66) = happyShift action_47
action_44 (67) = happyShift action_48
action_44 (68) = happyShift action_49
action_44 (69) = happyShift action_50
action_44 (15) = happyGoto action_38
action_44 (16) = happyGoto action_39
action_44 (17) = happyGoto action_40
action_44 (35) = happyGoto action_80
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (37) = happyShift action_44
action_45 (40) = happyShift action_45
action_45 (51) = happyShift action_78
action_45 (52) = happyShift action_79
action_45 (66) = happyShift action_47
action_45 (67) = happyShift action_48
action_45 (68) = happyShift action_49
action_45 (69) = happyShift action_50
action_45 (15) = happyGoto action_38
action_45 (16) = happyGoto action_39
action_45 (17) = happyGoto action_40
action_45 (33) = happyGoto action_77
action_45 (34) = happyGoto action_42
action_45 (35) = happyGoto action_43
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_37

action_47 _ = happyReduce_25

action_48 _ = happyReduce_24

action_49 (40) = happyShift action_76
action_49 _ = happyReduce_23

action_50 _ = happyReduce_22

action_51 (68) = happyShift action_63
action_51 (16) = happyGoto action_75
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (37) = happyShift action_44
action_52 (40) = happyShift action_45
action_52 (66) = happyShift action_47
action_52 (67) = happyShift action_48
action_52 (68) = happyShift action_49
action_52 (69) = happyShift action_50
action_52 (15) = happyGoto action_38
action_52 (16) = happyGoto action_39
action_52 (17) = happyGoto action_40
action_52 (33) = happyGoto action_74
action_52 (34) = happyGoto action_42
action_52 (35) = happyGoto action_43
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (37) = happyShift action_44
action_53 (40) = happyShift action_45
action_53 (50) = happyShift action_72
action_53 (66) = happyShift action_47
action_53 (67) = happyShift action_48
action_53 (68) = happyShift action_49
action_53 (69) = happyShift action_50
action_53 (15) = happyGoto action_38
action_53 (16) = happyGoto action_39
action_53 (17) = happyGoto action_40
action_53 (30) = happyGoto action_73
action_53 (31) = happyGoto action_69
action_53 (32) = happyGoto action_70
action_53 (33) = happyGoto action_71
action_53 (34) = happyGoto action_42
action_53 (35) = happyGoto action_43
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (37) = happyShift action_44
action_54 (40) = happyShift action_45
action_54 (50) = happyShift action_72
action_54 (66) = happyShift action_47
action_54 (67) = happyShift action_48
action_54 (68) = happyShift action_49
action_54 (69) = happyShift action_50
action_54 (15) = happyGoto action_38
action_54 (16) = happyGoto action_39
action_54 (17) = happyGoto action_40
action_54 (30) = happyGoto action_68
action_54 (31) = happyGoto action_69
action_54 (32) = happyGoto action_70
action_54 (33) = happyGoto action_71
action_54 (34) = happyGoto action_42
action_54 (35) = happyGoto action_43
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_44

action_56 _ = happyReduce_27

action_57 _ = happyReduce_16

action_58 (37) = happyShift action_44
action_58 (40) = happyShift action_45
action_58 (66) = happyShift action_47
action_58 (67) = happyShift action_48
action_58 (68) = happyShift action_49
action_58 (69) = happyShift action_50
action_58 (15) = happyGoto action_38
action_58 (16) = happyGoto action_39
action_58 (17) = happyGoto action_40
action_58 (33) = happyGoto action_67
action_58 (34) = happyGoto action_42
action_58 (35) = happyGoto action_43
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_17

action_60 (57) = happyShift action_27
action_60 (59) = happyShift action_28
action_60 (61) = happyShift action_29
action_60 (62) = happyShift action_30
action_60 (63) = happyShift action_31
action_60 (65) = happyShift action_66
action_60 (68) = happyShift action_32
action_60 (16) = happyGoto action_16
action_60 (20) = happyGoto action_56
action_60 (21) = happyGoto action_19
action_60 (22) = happyGoto action_20
action_60 (23) = happyGoto action_21
action_60 (24) = happyGoto action_22
action_60 (25) = happyGoto action_23
action_60 (26) = happyGoto action_24
action_60 (27) = happyGoto action_25
action_60 (28) = happyGoto action_26
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (55) = happyShift action_64
action_61 (56) = happyShift action_65
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_21

action_63 _ = happyReduce_23

action_64 _ = happyReduce_19

action_65 (68) = happyShift action_63
action_65 (16) = happyGoto action_122
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_15

action_67 (36) = happyShift action_83
action_67 (37) = happyShift action_84
action_67 (55) = happyShift action_121
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (41) = happyShift action_120
action_68 (48) = happyShift action_111
action_68 (49) = happyShift action_112
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_51

action_70 _ = happyReduce_53

action_71 (36) = happyShift action_83
action_71 (37) = happyShift action_84
action_71 (42) = happyShift action_114
action_71 (43) = happyShift action_115
action_71 (44) = happyShift action_116
action_71 (45) = happyShift action_117
action_71 (46) = happyShift action_118
action_71 (47) = happyShift action_119
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (37) = happyShift action_44
action_72 (40) = happyShift action_45
action_72 (50) = happyShift action_72
action_72 (66) = happyShift action_47
action_72 (67) = happyShift action_48
action_72 (68) = happyShift action_49
action_72 (69) = happyShift action_50
action_72 (15) = happyGoto action_38
action_72 (16) = happyGoto action_39
action_72 (17) = happyGoto action_40
action_72 (31) = happyGoto action_113
action_72 (32) = happyGoto action_70
action_72 (33) = happyGoto action_71
action_72 (34) = happyGoto action_42
action_72 (35) = happyGoto action_43
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (41) = happyShift action_110
action_73 (48) = happyShift action_111
action_73 (49) = happyShift action_112
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (36) = happyShift action_83
action_74 (37) = happyShift action_84
action_74 (41) = happyShift action_109
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (41) = happyShift action_108
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (37) = happyShift action_44
action_76 (40) = happyShift action_45
action_76 (41) = happyShift action_107
action_76 (66) = happyShift action_47
action_76 (67) = happyShift action_48
action_76 (68) = happyShift action_49
action_76 (69) = happyShift action_50
action_76 (15) = happyGoto action_38
action_76 (16) = happyGoto action_39
action_76 (17) = happyGoto action_40
action_76 (29) = happyGoto action_106
action_76 (33) = happyGoto action_87
action_76 (34) = happyGoto action_42
action_76 (35) = happyGoto action_43
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (36) = happyShift action_83
action_77 (37) = happyShift action_84
action_77 (41) = happyShift action_105
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (41) = happyShift action_104
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (41) = happyShift action_103
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_68

action_81 (37) = happyShift action_44
action_81 (40) = happyShift action_45
action_81 (66) = happyShift action_47
action_81 (67) = happyShift action_48
action_81 (68) = happyShift action_49
action_81 (69) = happyShift action_50
action_81 (15) = happyGoto action_38
action_81 (16) = happyGoto action_39
action_81 (17) = happyGoto action_40
action_81 (35) = happyGoto action_102
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (37) = happyShift action_44
action_82 (40) = happyShift action_45
action_82 (66) = happyShift action_47
action_82 (67) = happyShift action_48
action_82 (68) = happyShift action_49
action_82 (69) = happyShift action_50
action_82 (15) = happyGoto action_38
action_82 (16) = happyGoto action_39
action_82 (17) = happyGoto action_40
action_82 (35) = happyGoto action_101
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (37) = happyShift action_44
action_83 (40) = happyShift action_45
action_83 (66) = happyShift action_47
action_83 (67) = happyShift action_48
action_83 (68) = happyShift action_49
action_83 (69) = happyShift action_50
action_83 (15) = happyGoto action_38
action_83 (16) = happyGoto action_39
action_83 (17) = happyGoto action_40
action_83 (34) = happyGoto action_100
action_83 (35) = happyGoto action_43
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (37) = happyShift action_44
action_84 (40) = happyShift action_45
action_84 (66) = happyShift action_47
action_84 (67) = happyShift action_48
action_84 (68) = happyShift action_49
action_84 (69) = happyShift action_50
action_84 (15) = happyGoto action_38
action_84 (16) = happyGoto action_39
action_84 (17) = happyGoto action_40
action_84 (34) = happyGoto action_99
action_84 (35) = happyGoto action_43
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_36

action_86 (41) = happyShift action_97
action_86 (56) = happyShift action_98
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (36) = happyShift action_83
action_87 (37) = happyShift action_84
action_87 _ = happyReduce_48

action_88 _ = happyReduce_46

action_89 (68) = happyShift action_63
action_89 (16) = happyGoto action_96
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (41) = happyShift action_94
action_90 (56) = happyShift action_95
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_13

action_92 (64) = happyShift action_12
action_92 (11) = happyGoto action_93
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_9

action_94 (64) = happyShift action_12
action_94 (11) = happyGoto action_141
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (51) = happyShift action_6
action_95 (52) = happyShift action_7
action_95 (53) = happyShift action_8
action_95 (5) = happyGoto action_89
action_95 (10) = happyGoto action_140
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_14

action_97 _ = happyReduce_45

action_98 (37) = happyShift action_44
action_98 (40) = happyShift action_45
action_98 (66) = happyShift action_47
action_98 (67) = happyShift action_48
action_98 (68) = happyShift action_49
action_98 (69) = happyShift action_50
action_98 (15) = happyGoto action_38
action_98 (16) = happyGoto action_39
action_98 (17) = happyGoto action_40
action_98 (33) = happyGoto action_139
action_98 (34) = happyGoto action_42
action_98 (35) = happyGoto action_43
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (38) = happyShift action_81
action_99 (39) = happyShift action_82
action_99 _ = happyReduce_61

action_100 (38) = happyShift action_81
action_100 (39) = happyShift action_82
action_100 _ = happyReduce_60

action_101 _ = happyReduce_64

action_102 _ = happyReduce_63

action_103 (37) = happyShift action_44
action_103 (40) = happyShift action_45
action_103 (66) = happyShift action_47
action_103 (67) = happyShift action_48
action_103 (68) = happyShift action_49
action_103 (69) = happyShift action_50
action_103 (15) = happyGoto action_38
action_103 (16) = happyGoto action_39
action_103 (17) = happyGoto action_40
action_103 (35) = happyGoto action_138
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (37) = happyShift action_44
action_104 (40) = happyShift action_45
action_104 (66) = happyShift action_47
action_104 (67) = happyShift action_48
action_104 (68) = happyShift action_49
action_104 (69) = happyShift action_50
action_104 (15) = happyGoto action_38
action_104 (16) = happyGoto action_39
action_104 (17) = happyGoto action_40
action_104 (35) = happyGoto action_137
action_104 _ = happyFail (happyExpListPerState 104)

action_105 _ = happyReduce_67

action_106 (41) = happyShift action_136
action_106 (56) = happyShift action_98
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_72

action_108 (55) = happyShift action_135
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (55) = happyShift action_134
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (64) = happyShift action_124
action_110 (18) = happyGoto action_133
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (37) = happyShift action_44
action_111 (40) = happyShift action_45
action_111 (50) = happyShift action_72
action_111 (66) = happyShift action_47
action_111 (67) = happyShift action_48
action_111 (68) = happyShift action_49
action_111 (69) = happyShift action_50
action_111 (15) = happyGoto action_38
action_111 (16) = happyGoto action_39
action_111 (17) = happyGoto action_40
action_111 (31) = happyGoto action_132
action_111 (32) = happyGoto action_70
action_111 (33) = happyGoto action_71
action_111 (34) = happyGoto action_42
action_111 (35) = happyGoto action_43
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (37) = happyShift action_44
action_112 (40) = happyShift action_45
action_112 (50) = happyShift action_72
action_112 (66) = happyShift action_47
action_112 (67) = happyShift action_48
action_112 (68) = happyShift action_49
action_112 (69) = happyShift action_50
action_112 (15) = happyGoto action_38
action_112 (16) = happyGoto action_39
action_112 (17) = happyGoto action_40
action_112 (31) = happyGoto action_131
action_112 (32) = happyGoto action_70
action_112 (33) = happyGoto action_71
action_112 (34) = happyGoto action_42
action_112 (35) = happyGoto action_43
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_52

action_114 (37) = happyShift action_44
action_114 (40) = happyShift action_45
action_114 (66) = happyShift action_47
action_114 (67) = happyShift action_48
action_114 (68) = happyShift action_49
action_114 (69) = happyShift action_50
action_114 (15) = happyGoto action_38
action_114 (16) = happyGoto action_39
action_114 (17) = happyGoto action_40
action_114 (33) = happyGoto action_130
action_114 (34) = happyGoto action_42
action_114 (35) = happyGoto action_43
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (37) = happyShift action_44
action_115 (40) = happyShift action_45
action_115 (66) = happyShift action_47
action_115 (67) = happyShift action_48
action_115 (68) = happyShift action_49
action_115 (69) = happyShift action_50
action_115 (15) = happyGoto action_38
action_115 (16) = happyGoto action_39
action_115 (17) = happyGoto action_40
action_115 (33) = happyGoto action_129
action_115 (34) = happyGoto action_42
action_115 (35) = happyGoto action_43
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (37) = happyShift action_44
action_116 (40) = happyShift action_45
action_116 (66) = happyShift action_47
action_116 (67) = happyShift action_48
action_116 (68) = happyShift action_49
action_116 (69) = happyShift action_50
action_116 (15) = happyGoto action_38
action_116 (16) = happyGoto action_39
action_116 (17) = happyGoto action_40
action_116 (33) = happyGoto action_128
action_116 (34) = happyGoto action_42
action_116 (35) = happyGoto action_43
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (37) = happyShift action_44
action_117 (40) = happyShift action_45
action_117 (66) = happyShift action_47
action_117 (67) = happyShift action_48
action_117 (68) = happyShift action_49
action_117 (69) = happyShift action_50
action_117 (15) = happyGoto action_38
action_117 (16) = happyGoto action_39
action_117 (17) = happyGoto action_40
action_117 (33) = happyGoto action_127
action_117 (34) = happyGoto action_42
action_117 (35) = happyGoto action_43
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (37) = happyShift action_44
action_118 (40) = happyShift action_45
action_118 (66) = happyShift action_47
action_118 (67) = happyShift action_48
action_118 (68) = happyShift action_49
action_118 (69) = happyShift action_50
action_118 (15) = happyGoto action_38
action_118 (16) = happyGoto action_39
action_118 (17) = happyGoto action_40
action_118 (33) = happyGoto action_126
action_118 (34) = happyGoto action_42
action_118 (35) = happyGoto action_43
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (37) = happyShift action_44
action_119 (40) = happyShift action_45
action_119 (66) = happyShift action_47
action_119 (67) = happyShift action_48
action_119 (68) = happyShift action_49
action_119 (69) = happyShift action_50
action_119 (15) = happyGoto action_38
action_119 (16) = happyGoto action_39
action_119 (17) = happyGoto action_40
action_119 (33) = happyGoto action_125
action_119 (34) = happyGoto action_42
action_119 (35) = happyGoto action_43
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (64) = happyShift action_124
action_120 (18) = happyGoto action_123
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_41

action_122 _ = happyReduce_20

action_123 (58) = happyShift action_143
action_123 _ = happyReduce_38

action_124 (57) = happyShift action_27
action_124 (59) = happyShift action_28
action_124 (61) = happyShift action_29
action_124 (62) = happyShift action_30
action_124 (63) = happyShift action_31
action_124 (68) = happyShift action_32
action_124 (16) = happyGoto action_16
action_124 (19) = happyGoto action_142
action_124 (20) = happyGoto action_18
action_124 (21) = happyGoto action_19
action_124 (22) = happyGoto action_20
action_124 (23) = happyGoto action_21
action_124 (24) = happyGoto action_22
action_124 (25) = happyGoto action_23
action_124 (26) = happyGoto action_24
action_124 (27) = happyGoto action_25
action_124 (28) = happyGoto action_26
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (36) = happyShift action_83
action_125 (37) = happyShift action_84
action_125 _ = happyReduce_59

action_126 (36) = happyShift action_83
action_126 (37) = happyShift action_84
action_126 _ = happyReduce_58

action_127 (36) = happyShift action_83
action_127 (37) = happyShift action_84
action_127 _ = happyReduce_57

action_128 (36) = happyShift action_83
action_128 (37) = happyShift action_84
action_128 _ = happyReduce_56

action_129 (36) = happyShift action_83
action_129 (37) = happyShift action_84
action_129 _ = happyReduce_55

action_130 (36) = happyShift action_83
action_130 (37) = happyShift action_84
action_130 _ = happyReduce_54

action_131 _ = happyReduce_50

action_132 _ = happyReduce_49

action_133 _ = happyReduce_40

action_134 _ = happyReduce_42

action_135 _ = happyReduce_43

action_136 _ = happyReduce_71

action_137 _ = happyReduce_73

action_138 _ = happyReduce_74

action_139 (36) = happyShift action_83
action_139 (37) = happyShift action_84
action_139 _ = happyReduce_47

action_140 _ = happyReduce_12

action_141 _ = happyReduce_8

action_142 (57) = happyShift action_27
action_142 (59) = happyShift action_28
action_142 (61) = happyShift action_29
action_142 (62) = happyShift action_30
action_142 (63) = happyShift action_31
action_142 (65) = happyShift action_145
action_142 (68) = happyShift action_32
action_142 (16) = happyGoto action_16
action_142 (20) = happyGoto action_56
action_142 (21) = happyGoto action_19
action_142 (22) = happyGoto action_20
action_142 (23) = happyGoto action_21
action_142 (24) = happyGoto action_22
action_142 (25) = happyGoto action_23
action_142 (26) = happyGoto action_24
action_142 (27) = happyGoto action_25
action_142 (28) = happyGoto action_26
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (64) = happyShift action_124
action_143 (18) = happyGoto action_144
action_143 _ = happyFail (happyExpListPerState 143)

action_144 _ = happyReduce_39

action_145 _ = happyReduce_26

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (Prog (fst (unzip happy_var_1)) (snd( unzip happy_var_1)) (fst happy_var_2) (snd happy_var_2)
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn4
		 (Prog [] [] (fst happy_var_1) (snd happy_var_1)
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn5
		 (TInt
	)

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn5
		 (TDouble
	)

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn5
		 (TString
	)

happyReduce_6 = happySpecReduce_2  6 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happyReduce 6 7 happyReduction_8
happyReduction_8 ((HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_2 :->: (happy_var_4, happy_var_1),(happy_var_2, fst(happy_var_6), snd(happy_var_6)))
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 5 7 happyReduction_9
happyReduction_9 ((HappyAbsSyn11  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 ((happy_var_2 :->: ([], happy_var_1),(happy_var_2, fst(happy_var_5), snd(happy_var_5)))
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn8
		 (TVoid
	)

happyReduce_12 = happySpecReduce_3  9 happyReduction_12
happyReduction_12 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  9 happyReduction_13
happyReduction_13 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  10 happyReduction_14
happyReduction_14 (HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_2 :#: (happy_var_1, 0)
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 4 11 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 ((happy_var_2, happy_var_3)
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  11 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (([], happy_var_2)
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  12 happyReduction_17
happyReduction_17 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  12 happyReduction_18
happyReduction_18 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  13 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (map(\x -> x:#: (happy_var_1, 0)) happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  14 happyReduction_20
happyReduction_20 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  14 happyReduction_21
happyReduction_21 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  15 happyReduction_22
happyReduction_22 (HappyTerminal (LIT happy_var_1))
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  16 happyReduction_23
happyReduction_23 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  17 happyReduction_24
happyReduction_24 (HappyTerminal (NUMINT happy_var_1))
	 =  HappyAbsSyn17
		 (CInt happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  17 happyReduction_25
happyReduction_25 (HappyTerminal (NUMDOUBLE happy_var_1))
	 =  HappyAbsSyn17
		 (CDouble happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  18 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  19 happyReduction_27
happyReduction_27 (HappyAbsSyn20  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  19 happyReduction_28
happyReduction_28 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 ([happy_var_1]
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  20 happyReduction_29
happyReduction_29 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  20 happyReduction_30
happyReduction_30 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  20 happyReduction_31
happyReduction_31 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  20 happyReduction_32
happyReduction_32 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  20 happyReduction_33
happyReduction_33 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  20 happyReduction_34
happyReduction_34 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  20 happyReduction_35
happyReduction_35 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  21 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn33  happy_var_2)
	_
	 =  HappyAbsSyn21
		 (Ret (Just happy_var_2)
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  21 happyReduction_37
happyReduction_37 _
	_
	 =  HappyAbsSyn21
		 (Ret Nothing
	)

happyReduce_38 = happyReduce 5 22 happyReduction_38
happyReduction_38 ((HappyAbsSyn18  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn30  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (If happy_var_3 happy_var_5 []
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 7 22 happyReduction_39
happyReduction_39 ((HappyAbsSyn18  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn30  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (If happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 5 23 happyReduction_40
happyReduction_40 ((HappyAbsSyn18  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn30  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 4 24 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn33  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (Atrib happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 5 25 happyReduction_42
happyReduction_42 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn33  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (Imp happy_var_3
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 5 26 happyReduction_43
happyReduction_43 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (Leitura happy_var_3
	) `HappyStk` happyRest

happyReduce_44 = happySpecReduce_2  27 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_1
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happyReduce 4 28 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn29  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (Proc happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_3  28 happyReduction_46
happyReduction_46 _
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn28
		 (Proc happy_var_1 []
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  29 happyReduction_47
happyReduction_47 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  29 happyReduction_48
happyReduction_48 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn29
		 ([happy_var_1]
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  30 happyReduction_49
happyReduction_49 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (Or happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  30 happyReduction_50
happyReduction_50 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (And happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  30 happyReduction_51
happyReduction_51 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_2  31 happyReduction_52
happyReduction_52 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (Not happy_var_2
	)
happyReduction_52 _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  31 happyReduction_53
happyReduction_53 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn31
		 (Rel happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  32 happyReduction_54
happyReduction_54 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (Req happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  32 happyReduction_55
happyReduction_55 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (Rdif happy_var_1 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  32 happyReduction_56
happyReduction_56 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (Rle happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  32 happyReduction_57
happyReduction_57 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (Rlt happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  32 happyReduction_58
happyReduction_58 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (Rge happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  32 happyReduction_59
happyReduction_59 (HappyAbsSyn33  happy_var_3)
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (Rgt happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  33 happyReduction_60
happyReduction_60 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn33
		 (Add happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  33 happyReduction_61
happyReduction_61 (HappyAbsSyn34  happy_var_3)
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn33
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  33 happyReduction_62
happyReduction_62 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  34 happyReduction_63
happyReduction_63 (HappyAbsSyn35  happy_var_3)
	_
	(HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn34
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_3  34 happyReduction_64
happyReduction_64 (HappyAbsSyn35  happy_var_3)
	_
	(HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn34
		 (Div happy_var_1 happy_var_3
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  34 happyReduction_65
happyReduction_65 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn34
		 (happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  35 happyReduction_66
happyReduction_66 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn35
		 (Const happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_3  35 happyReduction_67
happyReduction_67 _
	(HappyAbsSyn33  happy_var_2)
	_
	 =  HappyAbsSyn35
		 (happy_var_2
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_2  35 happyReduction_68
happyReduction_68 (HappyAbsSyn35  happy_var_2)
	_
	 =  HappyAbsSyn35
		 (Neg happy_var_2
	)
happyReduction_68 _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  35 happyReduction_69
happyReduction_69 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn35
		 (IdVar happy_var_1
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_1  35 happyReduction_70
happyReduction_70 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn35
		 (Lit happy_var_1
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happyReduce 4 35 happyReduction_71
happyReduction_71 (_ `HappyStk`
	(HappyAbsSyn29  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn35
		 (Chamada happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_72 = happySpecReduce_3  35 happyReduction_72
happyReduction_72 _
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn35
		 (Chamada happy_var_1 []
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happyReduce 4 35 happyReduction_73
happyReduction_73 ((HappyAbsSyn35  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn35
		 (DoubleInt happy_var_4
	) `HappyStk` happyRest

happyReduce_74 = happyReduce 4 35 happyReduction_74
happyReduction_74 ((HappyAbsSyn35  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn35
		 (IntDouble happy_var_4
	) `HappyStk` happyRest

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
	DECDOUBLE -> cont 52;
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
          -- case calc(L.alexScanTokens s) of
          --   Expr v -> print v
          --   ExprL v -> print v
          --   -- Vars v -> print v
          --   -- Bloco v -> print v
          --   -- BlocoPrinci v -> print v
          --   -- Vars v -> print v
          --   -- Bloco v -> print v
          --   -- BlocoPrinci v -> print v
          --   -- DeclParams v -> print v
            -- Funcs v -> print v
          --   Funcs v -> print v
          print (calc (L.alexScanTokens s))
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
