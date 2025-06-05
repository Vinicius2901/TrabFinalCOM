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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,224) ([0,576,53368,1,4608,0,14,6144,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,18432,0,56,16384,2,448,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,14,0,0,0,0,0,48,0,0,0,0,0,0,0,0,8070,0,0,288,57348,0,0,0,0,0,0,0,0,0,0,0,0,80,0,0,2688,0,0,0,0,0,0,0,0,0,0,0,8,0,0,72,14352,0,0,0,0,49920,15,0,36864,0,112,32768,4,896,0,36,7168,0,288,57344,0,2304,0,7,18432,0,56,16384,2,448,0,18,3584,0,144,28674,0,1152,32784,3,0,0,0,0,49152,0,0,0,0,0,140,0,0,0,0,0,4608,0,14,36864,0,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,24,0,0,192,0,0,1536,0,0,12288,0,0,32768,1,0,0,12,0,0,384,0,0,3072,0,0,6144,8192,0,0,0,0,0,32804,7168,0,0,0,0,0,0,0,32768,192,0,0,0,0,0,0,0,0,0,1024,0,0,2048,0,0,0,1,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Inicio","Tipo","Bloco","ListaCmd","Cmd","Retorno","CmdSe","Declaracoes","Declaracao","ListaId","ExprL","TermL","ExprR","Expr","Term","Factor","IdVar","TConst","'+'","'-'","'*'","'/'","'('","')'","'=='","'/='","'<='","'<'","'>='","'>'","'||'","'&&'","'!'","'int'","'float'","'string'","';'","','","'if'","'else'","'return'","'{'","'}'","NumDouble","NumInt","Id","Literal","%eof"]
        bit_start = st Prelude.* 51
        bit_end = (st Prelude.+ 1) Prelude.* 51
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..50]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (23) = happyShift action_7
action_0 (26) = happyShift action_8
action_0 (36) = happyShift action_21
action_0 (37) = happyShift action_22
action_0 (38) = happyShift action_23
action_0 (39) = happyShift action_24
action_0 (45) = happyShift action_25
action_0 (47) = happyShift action_9
action_0 (48) = happyShift action_10
action_0 (49) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 (5) = happyGoto action_13
action_0 (6) = happyGoto action_14
action_0 (11) = happyGoto action_15
action_0 (12) = happyGoto action_16
action_0 (14) = happyGoto action_17
action_0 (15) = happyGoto action_18
action_0 (16) = happyGoto action_19
action_0 (17) = happyGoto action_20
action_0 (18) = happyGoto action_3
action_0 (19) = happyGoto action_4
action_0 (20) = happyGoto action_5
action_0 (21) = happyGoto action_6
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (23) = happyShift action_7
action_1 (26) = happyShift action_8
action_1 (47) = happyShift action_9
action_1 (48) = happyShift action_10
action_1 (49) = happyShift action_11
action_1 (17) = happyGoto action_2
action_1 (18) = happyGoto action_3
action_1 (19) = happyGoto action_4
action_1 (20) = happyGoto action_5
action_1 (21) = happyGoto action_6
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (22) = happyShift action_34
action_2 (23) = happyShift action_35
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (24) = happyShift action_49
action_3 (25) = happyShift action_50
action_3 _ = happyReduce_35

action_4 _ = happyReduce_38

action_5 _ = happyReduce_42

action_6 _ = happyReduce_39

action_7 (23) = happyShift action_7
action_7 (26) = happyShift action_8
action_7 (47) = happyShift action_9
action_7 (48) = happyShift action_10
action_7 (49) = happyShift action_11
action_7 (19) = happyGoto action_48
action_7 (20) = happyGoto action_5
action_7 (21) = happyGoto action_6
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (23) = happyShift action_7
action_8 (26) = happyShift action_8
action_8 (47) = happyShift action_9
action_8 (48) = happyShift action_10
action_8 (49) = happyShift action_11
action_8 (17) = happyGoto action_47
action_8 (18) = happyGoto action_3
action_8 (19) = happyGoto action_4
action_8 (20) = happyGoto action_5
action_8 (21) = happyGoto action_6
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_45

action_10 _ = happyReduce_44

action_11 _ = happyReduce_43

action_12 (51) = happyAccept
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (49) = happyShift action_11
action_13 (13) = happyGoto action_45
action_13 (20) = happyGoto action_46
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_4

action_15 (37) = happyShift action_22
action_15 (38) = happyShift action_23
action_15 (39) = happyShift action_24
action_15 (5) = happyGoto action_13
action_15 (12) = happyGoto action_44
action_15 _ = happyReduce_3

action_16 _ = happyReduce_18

action_17 (34) = happyShift action_42
action_17 (35) = happyShift action_43
action_17 _ = happyReduce_2

action_18 _ = happyReduce_24

action_19 _ = happyReduce_26

action_20 (22) = happyShift action_34
action_20 (23) = happyShift action_35
action_20 (28) = happyShift action_36
action_20 (29) = happyShift action_37
action_20 (30) = happyShift action_38
action_20 (31) = happyShift action_39
action_20 (32) = happyShift action_40
action_20 (33) = happyShift action_41
action_20 _ = happyReduce_1

action_21 (23) = happyShift action_7
action_21 (26) = happyShift action_8
action_21 (36) = happyShift action_21
action_21 (47) = happyShift action_9
action_21 (48) = happyShift action_10
action_21 (49) = happyShift action_11
action_21 (15) = happyGoto action_32
action_21 (16) = happyGoto action_19
action_21 (17) = happyGoto action_33
action_21 (18) = happyGoto action_3
action_21 (19) = happyGoto action_4
action_21 (20) = happyGoto action_5
action_21 (21) = happyGoto action_6
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_5

action_23 _ = happyReduce_6

action_24 _ = happyReduce_7

action_25 (42) = happyShift action_30
action_25 (44) = happyShift action_31
action_25 (7) = happyGoto action_26
action_25 (8) = happyGoto action_27
action_25 (9) = happyGoto action_28
action_25 (10) = happyGoto action_29
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (42) = happyShift action_30
action_26 (44) = happyShift action_31
action_26 (46) = happyShift action_70
action_26 (8) = happyGoto action_69
action_26 (9) = happyGoto action_28
action_26 (10) = happyGoto action_29
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_10

action_28 _ = happyReduce_12

action_29 _ = happyReduce_11

action_30 (26) = happyShift action_68
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (23) = happyShift action_7
action_31 (26) = happyShift action_8
action_31 (40) = happyShift action_67
action_31 (47) = happyShift action_9
action_31 (48) = happyShift action_10
action_31 (49) = happyShift action_11
action_31 (17) = happyGoto action_66
action_31 (18) = happyGoto action_3
action_31 (19) = happyGoto action_4
action_31 (20) = happyGoto action_5
action_31 (21) = happyGoto action_6
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_25

action_33 (22) = happyShift action_34
action_33 (23) = happyShift action_35
action_33 (28) = happyShift action_36
action_33 (29) = happyShift action_37
action_33 (30) = happyShift action_38
action_33 (31) = happyShift action_39
action_33 (32) = happyShift action_40
action_33 (33) = happyShift action_41
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (23) = happyShift action_7
action_34 (26) = happyShift action_8
action_34 (47) = happyShift action_9
action_34 (48) = happyShift action_10
action_34 (49) = happyShift action_11
action_34 (18) = happyGoto action_65
action_34 (19) = happyGoto action_4
action_34 (20) = happyGoto action_5
action_34 (21) = happyGoto action_6
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (23) = happyShift action_7
action_35 (26) = happyShift action_8
action_35 (47) = happyShift action_9
action_35 (48) = happyShift action_10
action_35 (49) = happyShift action_11
action_35 (18) = happyGoto action_64
action_35 (19) = happyGoto action_4
action_35 (20) = happyGoto action_5
action_35 (21) = happyGoto action_6
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (23) = happyShift action_7
action_36 (26) = happyShift action_8
action_36 (47) = happyShift action_9
action_36 (48) = happyShift action_10
action_36 (49) = happyShift action_11
action_36 (17) = happyGoto action_63
action_36 (18) = happyGoto action_3
action_36 (19) = happyGoto action_4
action_36 (20) = happyGoto action_5
action_36 (21) = happyGoto action_6
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (23) = happyShift action_7
action_37 (26) = happyShift action_8
action_37 (47) = happyShift action_9
action_37 (48) = happyShift action_10
action_37 (49) = happyShift action_11
action_37 (17) = happyGoto action_62
action_37 (18) = happyGoto action_3
action_37 (19) = happyGoto action_4
action_37 (20) = happyGoto action_5
action_37 (21) = happyGoto action_6
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (23) = happyShift action_7
action_38 (26) = happyShift action_8
action_38 (47) = happyShift action_9
action_38 (48) = happyShift action_10
action_38 (49) = happyShift action_11
action_38 (17) = happyGoto action_61
action_38 (18) = happyGoto action_3
action_38 (19) = happyGoto action_4
action_38 (20) = happyGoto action_5
action_38 (21) = happyGoto action_6
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (23) = happyShift action_7
action_39 (26) = happyShift action_8
action_39 (47) = happyShift action_9
action_39 (48) = happyShift action_10
action_39 (49) = happyShift action_11
action_39 (17) = happyGoto action_60
action_39 (18) = happyGoto action_3
action_39 (19) = happyGoto action_4
action_39 (20) = happyGoto action_5
action_39 (21) = happyGoto action_6
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (23) = happyShift action_7
action_40 (26) = happyShift action_8
action_40 (47) = happyShift action_9
action_40 (48) = happyShift action_10
action_40 (49) = happyShift action_11
action_40 (17) = happyGoto action_59
action_40 (18) = happyGoto action_3
action_40 (19) = happyGoto action_4
action_40 (20) = happyGoto action_5
action_40 (21) = happyGoto action_6
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (23) = happyShift action_7
action_41 (26) = happyShift action_8
action_41 (47) = happyShift action_9
action_41 (48) = happyShift action_10
action_41 (49) = happyShift action_11
action_41 (17) = happyGoto action_58
action_41 (18) = happyGoto action_3
action_41 (19) = happyGoto action_4
action_41 (20) = happyGoto action_5
action_41 (21) = happyGoto action_6
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (23) = happyShift action_7
action_42 (26) = happyShift action_8
action_42 (36) = happyShift action_21
action_42 (47) = happyShift action_9
action_42 (48) = happyShift action_10
action_42 (49) = happyShift action_11
action_42 (15) = happyGoto action_57
action_42 (16) = happyGoto action_19
action_42 (17) = happyGoto action_33
action_42 (18) = happyGoto action_3
action_42 (19) = happyGoto action_4
action_42 (20) = happyGoto action_5
action_42 (21) = happyGoto action_6
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (23) = happyShift action_7
action_43 (26) = happyShift action_8
action_43 (36) = happyShift action_21
action_43 (47) = happyShift action_9
action_43 (48) = happyShift action_10
action_43 (49) = happyShift action_11
action_43 (15) = happyGoto action_56
action_43 (16) = happyGoto action_19
action_43 (17) = happyGoto action_33
action_43 (18) = happyGoto action_3
action_43 (19) = happyGoto action_4
action_43 (20) = happyGoto action_5
action_43 (21) = happyGoto action_6
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_17

action_45 (40) = happyShift action_54
action_45 (41) = happyShift action_55
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_21

action_47 (22) = happyShift action_34
action_47 (23) = happyShift action_35
action_47 (27) = happyShift action_53
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_41

action_49 (23) = happyShift action_7
action_49 (26) = happyShift action_8
action_49 (47) = happyShift action_9
action_49 (48) = happyShift action_10
action_49 (49) = happyShift action_11
action_49 (19) = happyGoto action_52
action_49 (20) = happyGoto action_5
action_49 (21) = happyGoto action_6
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (23) = happyShift action_7
action_50 (26) = happyShift action_8
action_50 (47) = happyShift action_9
action_50 (48) = happyShift action_10
action_50 (49) = happyShift action_11
action_50 (19) = happyGoto action_51
action_50 (20) = happyGoto action_5
action_50 (21) = happyGoto action_6
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_37

action_52 _ = happyReduce_36

action_53 _ = happyReduce_40

action_54 _ = happyReduce_19

action_55 (49) = happyShift action_11
action_55 (20) = happyGoto action_73
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_23

action_57 _ = happyReduce_22

action_58 (22) = happyShift action_34
action_58 (23) = happyShift action_35
action_58 _ = happyReduce_32

action_59 (22) = happyShift action_34
action_59 (23) = happyShift action_35
action_59 _ = happyReduce_31

action_60 (22) = happyShift action_34
action_60 (23) = happyShift action_35
action_60 _ = happyReduce_30

action_61 (22) = happyShift action_34
action_61 (23) = happyShift action_35
action_61 _ = happyReduce_29

action_62 (22) = happyShift action_34
action_62 (23) = happyShift action_35
action_62 _ = happyReduce_28

action_63 (22) = happyShift action_34
action_63 (23) = happyShift action_35
action_63 _ = happyReduce_27

action_64 (24) = happyShift action_49
action_64 (25) = happyShift action_50
action_64 _ = happyReduce_34

action_65 (24) = happyShift action_49
action_65 (25) = happyShift action_50
action_65 _ = happyReduce_33

action_66 (22) = happyShift action_34
action_66 (23) = happyShift action_35
action_66 (40) = happyShift action_72
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_14

action_68 (23) = happyShift action_7
action_68 (26) = happyShift action_8
action_68 (36) = happyShift action_21
action_68 (47) = happyShift action_9
action_68 (48) = happyShift action_10
action_68 (49) = happyShift action_11
action_68 (14) = happyGoto action_71
action_68 (15) = happyGoto action_18
action_68 (16) = happyGoto action_19
action_68 (17) = happyGoto action_33
action_68 (18) = happyGoto action_3
action_68 (19) = happyGoto action_4
action_68 (20) = happyGoto action_5
action_68 (21) = happyGoto action_6
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_9

action_70 _ = happyReduce_8

action_71 (27) = happyShift action_74
action_71 (34) = happyShift action_42
action_71 (35) = happyShift action_43
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_13

action_73 _ = happyReduce_20

action_74 (45) = happyShift action_25
action_74 (6) = happyGoto action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (43) = happyShift action_76
action_75 _ = happyReduce_15

action_76 (45) = happyShift action_25
action_76 (6) = happyGoto action_77
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_16

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn4
		 (Expr happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn4
		 (ExprL happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn4
		 (Vars happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
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

happyReduce_8 = happySpecReduce_3  6 happyReduction_8
happyReduction_8 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  7 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  9 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Ret (Just happy_var_2)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  9 happyReduction_14
happyReduction_14 _
	_
	 =  HappyAbsSyn9
		 (Ret Nothing
	)

happyReduce_15 = happyReduce 5 10 happyReduction_15
happyReduction_15 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 7 10 happyReduction_16
happyReduction_16 ((HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (If happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  11 happyReduction_17
happyReduction_17 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  11 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  12 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn12
		 (map(\x -> x:#: (happy_var_1, 0)) happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  13 happyReduction_20
happyReduction_20 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  13 happyReduction_21
happyReduction_21 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  14 happyReduction_22
happyReduction_22 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (Or happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  14 happyReduction_23
happyReduction_23 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (And happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  14 happyReduction_24
happyReduction_24 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  15 happyReduction_25
happyReduction_25 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (Not happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  15 happyReduction_26
happyReduction_26 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (Rel happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  16 happyReduction_27
happyReduction_27 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Req happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  16 happyReduction_28
happyReduction_28 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Rdif happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  16 happyReduction_29
happyReduction_29 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Rle happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  16 happyReduction_30
happyReduction_30 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Rlt happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  16 happyReduction_31
happyReduction_31 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Rge happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  16 happyReduction_32
happyReduction_32 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Rgt happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  17 happyReduction_33
happyReduction_33 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (Add happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  17 happyReduction_34
happyReduction_34 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  17 happyReduction_35
happyReduction_35 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  18 happyReduction_36
happyReduction_36 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  18 happyReduction_37
happyReduction_37 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Div happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  18 happyReduction_38
happyReduction_38 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  19 happyReduction_39
happyReduction_39 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn19
		 (Const happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  19 happyReduction_40
happyReduction_40 _
	(HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (happy_var_2
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  19 happyReduction_41
happyReduction_41 (HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (Neg happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  19 happyReduction_42
happyReduction_42 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 (IdVar happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  20 happyReduction_43
happyReduction_43 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  21 happyReduction_44
happyReduction_44 (HappyTerminal (NUMINT happy_var_1))
	 =  HappyAbsSyn21
		 (CInt happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  21 happyReduction_45
happyReduction_45 (HappyTerminal (NUMDOUBLE happy_var_1))
	 =  HappyAbsSyn21
		 (CDouble happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ADD -> cont 22;
	SUB -> cont 23;
	MUL -> cont 24;
	DIV -> cont 25;
	LPAR -> cont 26;
	RPAR -> cont 27;
	REQ -> cont 28;
	RNE -> cont 29;
	RLE -> cont 30;
	RLT -> cont 31;
	RGE -> cont 32;
	RGT -> cont 33;
	OR -> cont 34;
	AND -> cont 35;
	NOT -> cont 36;
	DECINT -> cont 37;
	DECFLOAT -> cont 38;
	DECSTRING -> cont 39;
	FIMLINHA -> cont 40;
	VIRGULA -> cont 41;
	IF -> cont 42;
	ELSE -> cont 43;
	RET -> cont 44;
	LBRACK -> cont 45;
	RBRACK -> cont 46;
	NUMDOUBLE happy_dollar_dollar -> cont 47;
	NUMINT happy_dollar_dollar -> cont 48;
	ID happy_dollar_dollar -> cont 49;
	LIT happy_dollar_dollar -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
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
