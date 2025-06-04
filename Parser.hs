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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,166) ([0,49170,115,4608,28672,0,3,0,3072,0,0,0,0,0,0,0,0,0,4608,28672,0,18,112,0,0,0,0,0,0,0,0,0,0,0,16384,0,32768,3,0,0,0,12288,0,0,0,0,0,0,49920,15,0,16402,112,0,0,0,0,0,0,0,0,0,0,49920,15,0,18,112,4608,28672,0,18,112,4608,28672,0,18,112,4608,28672,0,18,112,4608,28672,0,16402,112,4608,28736,0,0,0,0,3072,0,0,0,8960,0,0,0,0,4608,28672,0,18,112,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,3,0,768,0,0,3,0,768,0,0,3,0,768,0,0,12,0,3072,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Inicio","Tipo","Declaracoes","Declaracao","ListaId","ExprL","TermL","ExprR","Expr","Term","Factor","IdVar","TConst","'+'","'-'","'*'","'/'","'('","')'","'=='","'/='","'<='","'<'","'>='","'>'","'||'","'&&'","'!'","'int'","'float'","'string'","';'","','","NumDouble","NumInt","Id","%eof"]
        bit_start = st Prelude.* 40
        bit_end = (st Prelude.+ 1) Prelude.* 40
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..39]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (18) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (31) = happyShift action_20
action_0 (32) = happyShift action_21
action_0 (33) = happyShift action_22
action_0 (34) = happyShift action_23
action_0 (37) = happyShift action_9
action_0 (38) = happyShift action_10
action_0 (39) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 (5) = happyGoto action_13
action_0 (6) = happyGoto action_14
action_0 (7) = happyGoto action_15
action_0 (9) = happyGoto action_16
action_0 (10) = happyGoto action_17
action_0 (11) = happyGoto action_18
action_0 (12) = happyGoto action_19
action_0 (13) = happyGoto action_3
action_0 (14) = happyGoto action_4
action_0 (15) = happyGoto action_5
action_0 (16) = happyGoto action_6
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (18) = happyShift action_7
action_1 (21) = happyShift action_8
action_1 (37) = happyShift action_9
action_1 (38) = happyShift action_10
action_1 (39) = happyShift action_11
action_1 (12) = happyGoto action_2
action_1 (13) = happyGoto action_3
action_1 (14) = happyGoto action_4
action_1 (15) = happyGoto action_5
action_1 (16) = happyGoto action_6
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (17) = happyShift action_26
action_2 (18) = happyShift action_27
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (19) = happyShift action_41
action_3 (20) = happyShift action_42
action_3 _ = happyReduce_25

action_4 _ = happyReduce_28

action_5 _ = happyReduce_32

action_6 _ = happyReduce_29

action_7 (18) = happyShift action_7
action_7 (21) = happyShift action_8
action_7 (37) = happyShift action_9
action_7 (38) = happyShift action_10
action_7 (39) = happyShift action_11
action_7 (14) = happyGoto action_40
action_7 (15) = happyGoto action_5
action_7 (16) = happyGoto action_6
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (18) = happyShift action_7
action_8 (21) = happyShift action_8
action_8 (37) = happyShift action_9
action_8 (38) = happyShift action_10
action_8 (39) = happyShift action_11
action_8 (12) = happyGoto action_39
action_8 (13) = happyGoto action_3
action_8 (14) = happyGoto action_4
action_8 (15) = happyGoto action_5
action_8 (16) = happyGoto action_6
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_35

action_10 _ = happyReduce_34

action_11 _ = happyReduce_33

action_12 (40) = happyAccept
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (39) = happyShift action_11
action_13 (8) = happyGoto action_37
action_13 (15) = happyGoto action_38
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (32) = happyShift action_21
action_14 (33) = happyShift action_22
action_14 (34) = happyShift action_23
action_14 (5) = happyGoto action_13
action_14 (7) = happyGoto action_36
action_14 _ = happyReduce_3

action_15 _ = happyReduce_8

action_16 (29) = happyShift action_34
action_16 (30) = happyShift action_35
action_16 _ = happyReduce_2

action_17 _ = happyReduce_14

action_18 _ = happyReduce_16

action_19 (17) = happyShift action_26
action_19 (18) = happyShift action_27
action_19 (23) = happyShift action_28
action_19 (24) = happyShift action_29
action_19 (25) = happyShift action_30
action_19 (26) = happyShift action_31
action_19 (27) = happyShift action_32
action_19 (28) = happyShift action_33
action_19 _ = happyReduce_1

action_20 (18) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (31) = happyShift action_20
action_20 (37) = happyShift action_9
action_20 (38) = happyShift action_10
action_20 (39) = happyShift action_11
action_20 (10) = happyGoto action_24
action_20 (11) = happyGoto action_18
action_20 (12) = happyGoto action_25
action_20 (13) = happyGoto action_3
action_20 (14) = happyGoto action_4
action_20 (15) = happyGoto action_5
action_20 (16) = happyGoto action_6
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_4

action_22 _ = happyReduce_5

action_23 _ = happyReduce_6

action_24 _ = happyReduce_15

action_25 (17) = happyShift action_26
action_25 (18) = happyShift action_27
action_25 (23) = happyShift action_28
action_25 (24) = happyShift action_29
action_25 (25) = happyShift action_30
action_25 (26) = happyShift action_31
action_25 (27) = happyShift action_32
action_25 (28) = happyShift action_33
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (18) = happyShift action_7
action_26 (21) = happyShift action_8
action_26 (37) = happyShift action_9
action_26 (38) = happyShift action_10
action_26 (39) = happyShift action_11
action_26 (13) = happyGoto action_57
action_26 (14) = happyGoto action_4
action_26 (15) = happyGoto action_5
action_26 (16) = happyGoto action_6
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (18) = happyShift action_7
action_27 (21) = happyShift action_8
action_27 (37) = happyShift action_9
action_27 (38) = happyShift action_10
action_27 (39) = happyShift action_11
action_27 (13) = happyGoto action_56
action_27 (14) = happyGoto action_4
action_27 (15) = happyGoto action_5
action_27 (16) = happyGoto action_6
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (18) = happyShift action_7
action_28 (21) = happyShift action_8
action_28 (37) = happyShift action_9
action_28 (38) = happyShift action_10
action_28 (39) = happyShift action_11
action_28 (12) = happyGoto action_55
action_28 (13) = happyGoto action_3
action_28 (14) = happyGoto action_4
action_28 (15) = happyGoto action_5
action_28 (16) = happyGoto action_6
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (18) = happyShift action_7
action_29 (21) = happyShift action_8
action_29 (37) = happyShift action_9
action_29 (38) = happyShift action_10
action_29 (39) = happyShift action_11
action_29 (12) = happyGoto action_54
action_29 (13) = happyGoto action_3
action_29 (14) = happyGoto action_4
action_29 (15) = happyGoto action_5
action_29 (16) = happyGoto action_6
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (18) = happyShift action_7
action_30 (21) = happyShift action_8
action_30 (37) = happyShift action_9
action_30 (38) = happyShift action_10
action_30 (39) = happyShift action_11
action_30 (12) = happyGoto action_53
action_30 (13) = happyGoto action_3
action_30 (14) = happyGoto action_4
action_30 (15) = happyGoto action_5
action_30 (16) = happyGoto action_6
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (18) = happyShift action_7
action_31 (21) = happyShift action_8
action_31 (37) = happyShift action_9
action_31 (38) = happyShift action_10
action_31 (39) = happyShift action_11
action_31 (12) = happyGoto action_52
action_31 (13) = happyGoto action_3
action_31 (14) = happyGoto action_4
action_31 (15) = happyGoto action_5
action_31 (16) = happyGoto action_6
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (18) = happyShift action_7
action_32 (21) = happyShift action_8
action_32 (37) = happyShift action_9
action_32 (38) = happyShift action_10
action_32 (39) = happyShift action_11
action_32 (12) = happyGoto action_51
action_32 (13) = happyGoto action_3
action_32 (14) = happyGoto action_4
action_32 (15) = happyGoto action_5
action_32 (16) = happyGoto action_6
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (18) = happyShift action_7
action_33 (21) = happyShift action_8
action_33 (37) = happyShift action_9
action_33 (38) = happyShift action_10
action_33 (39) = happyShift action_11
action_33 (12) = happyGoto action_50
action_33 (13) = happyGoto action_3
action_33 (14) = happyGoto action_4
action_33 (15) = happyGoto action_5
action_33 (16) = happyGoto action_6
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (18) = happyShift action_7
action_34 (21) = happyShift action_8
action_34 (31) = happyShift action_20
action_34 (37) = happyShift action_9
action_34 (38) = happyShift action_10
action_34 (39) = happyShift action_11
action_34 (10) = happyGoto action_49
action_34 (11) = happyGoto action_18
action_34 (12) = happyGoto action_25
action_34 (13) = happyGoto action_3
action_34 (14) = happyGoto action_4
action_34 (15) = happyGoto action_5
action_34 (16) = happyGoto action_6
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (18) = happyShift action_7
action_35 (21) = happyShift action_8
action_35 (31) = happyShift action_20
action_35 (37) = happyShift action_9
action_35 (38) = happyShift action_10
action_35 (39) = happyShift action_11
action_35 (10) = happyGoto action_48
action_35 (11) = happyGoto action_18
action_35 (12) = happyGoto action_25
action_35 (13) = happyGoto action_3
action_35 (14) = happyGoto action_4
action_35 (15) = happyGoto action_5
action_35 (16) = happyGoto action_6
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_7

action_37 (35) = happyShift action_46
action_37 (36) = happyShift action_47
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_11

action_39 (17) = happyShift action_26
action_39 (18) = happyShift action_27
action_39 (22) = happyShift action_45
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_31

action_41 (18) = happyShift action_7
action_41 (21) = happyShift action_8
action_41 (37) = happyShift action_9
action_41 (38) = happyShift action_10
action_41 (39) = happyShift action_11
action_41 (14) = happyGoto action_44
action_41 (15) = happyGoto action_5
action_41 (16) = happyGoto action_6
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (18) = happyShift action_7
action_42 (21) = happyShift action_8
action_42 (37) = happyShift action_9
action_42 (38) = happyShift action_10
action_42 (39) = happyShift action_11
action_42 (14) = happyGoto action_43
action_42 (15) = happyGoto action_5
action_42 (16) = happyGoto action_6
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_27

action_44 _ = happyReduce_26

action_45 _ = happyReduce_30

action_46 _ = happyReduce_9

action_47 (39) = happyShift action_11
action_47 (15) = happyGoto action_58
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_13

action_49 _ = happyReduce_12

action_50 (17) = happyShift action_26
action_50 (18) = happyShift action_27
action_50 _ = happyReduce_22

action_51 (17) = happyShift action_26
action_51 (18) = happyShift action_27
action_51 _ = happyReduce_21

action_52 (17) = happyShift action_26
action_52 (18) = happyShift action_27
action_52 _ = happyReduce_20

action_53 (17) = happyShift action_26
action_53 (18) = happyShift action_27
action_53 _ = happyReduce_19

action_54 (17) = happyShift action_26
action_54 (18) = happyShift action_27
action_54 _ = happyReduce_18

action_55 (17) = happyShift action_26
action_55 (18) = happyShift action_27
action_55 _ = happyReduce_17

action_56 (19) = happyShift action_41
action_56 (20) = happyShift action_42
action_56 _ = happyReduce_24

action_57 (19) = happyShift action_41
action_57 (20) = happyShift action_42
action_57 _ = happyReduce_23

action_58 _ = happyReduce_10

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
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  7 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn7
		 (map(\x -> x:#: (happy_var_1, 0)) happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  8 happyReduction_10
happyReduction_10 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  9 happyReduction_12
happyReduction_12 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Or happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  9 happyReduction_13
happyReduction_13 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (And happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  9 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  10 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Not happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  10 happyReduction_16
happyReduction_16 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (Rel happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  11 happyReduction_17
happyReduction_17 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Req happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  11 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rdif happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  11 happyReduction_19
happyReduction_19 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rle happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rlt happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  11 happyReduction_21
happyReduction_21 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rge happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  11 happyReduction_22
happyReduction_22 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Rgt happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Add happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  12 happyReduction_24
happyReduction_24 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  12 happyReduction_25
happyReduction_25 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  13 happyReduction_26
happyReduction_26 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  13 happyReduction_27
happyReduction_27 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Div happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  13 happyReduction_28
happyReduction_28 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  14 happyReduction_29
happyReduction_29 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn14
		 (Const happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (happy_var_2
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  14 happyReduction_31
happyReduction_31 (HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (Neg happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  14 happyReduction_32
happyReduction_32 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (IdVar happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  15 happyReduction_33
happyReduction_33 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  16 happyReduction_34
happyReduction_34 (HappyTerminal (NUMINT happy_var_1))
	 =  HappyAbsSyn16
		 (CInt happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  16 happyReduction_35
happyReduction_35 (HappyTerminal (NUMDOUBLE happy_var_1))
	 =  HappyAbsSyn16
		 (CDouble happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ADD -> cont 17;
	SUB -> cont 18;
	MUL -> cont 19;
	DIV -> cont 20;
	LPAR -> cont 21;
	RPAR -> cont 22;
	REQ -> cont 23;
	RNE -> cont 24;
	RLE -> cont 25;
	RLT -> cont 26;
	RGE -> cont 27;
	RGT -> cont 28;
	OR -> cont 29;
	AND -> cont 30;
	NOT -> cont 31;
	DECINT -> cont 32;
	DECFLOAT -> cont 33;
	DECSTRING -> cont 34;
	FIMLINHA -> cont 35;
	VIRGULA -> cont 36;
	NUMDOUBLE happy_dollar_dollar -> cont 37;
	NUMINT happy_dollar_dollar -> cont 38;
	ID happy_dollar_dollar -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
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
