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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,142) ([8192,33793,3,9,28,12,0,384,0,0,0,0,0,0,0,0,36,112,288,896,0,0,0,0,0,0,0,0,0,32768,1,0,0,0,0,12288,252,0,8201,28,0,0,63584,1,4608,14336,36864,49152,32769,4,14,36,112,288,896,2304,7168,18432,57344,16384,2,7,16402,56,144,450,2240,0,0,0,8192,32769,3,9,28,0,0,0,0,0,0,0,0,0,0,0,6,0,48,0,384,0,3072,0,24576,0,0,3,0,96,0,768,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Inicio","ExprL","TermL","ExprR","Expr","Term","Factor","IdVar","TConst","'+'","'-'","'*'","'/'","'('","')'","'=='","'/='","'<='","'<'","'>='","'>'","'||'","'&&'","'!'","'int'","'float'","'string'","';'","NumDouble","NumInt","Id","%eof"]
        bit_start = st Prelude.* 35
        bit_end = (st Prelude.+ 1) Prelude.* 35
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..34]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (14) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (27) = happyShift action_17
action_0 (32) = happyShift action_9
action_0 (33) = happyShift action_10
action_0 (34) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 (5) = happyGoto action_13
action_0 (6) = happyGoto action_14
action_0 (7) = happyGoto action_15
action_0 (8) = happyGoto action_16
action_0 (9) = happyGoto action_3
action_0 (10) = happyGoto action_4
action_0 (11) = happyGoto action_5
action_0 (12) = happyGoto action_6
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (14) = happyShift action_7
action_1 (17) = happyShift action_8
action_1 (32) = happyShift action_9
action_1 (33) = happyShift action_10
action_1 (34) = happyShift action_11
action_1 (8) = happyGoto action_2
action_1 (9) = happyGoto action_3
action_1 (10) = happyGoto action_4
action_1 (11) = happyGoto action_5
action_1 (12) = happyGoto action_6
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (13) = happyShift action_20
action_2 (14) = happyShift action_21
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (15) = happyShift action_32
action_3 (16) = happyShift action_33
action_3 _ = happyReduce_16

action_4 _ = happyReduce_19

action_5 _ = happyReduce_23

action_6 _ = happyReduce_20

action_7 (14) = happyShift action_7
action_7 (17) = happyShift action_8
action_7 (32) = happyShift action_9
action_7 (33) = happyShift action_10
action_7 (34) = happyShift action_11
action_7 (10) = happyGoto action_31
action_7 (11) = happyGoto action_5
action_7 (12) = happyGoto action_6
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (14) = happyShift action_7
action_8 (17) = happyShift action_8
action_8 (32) = happyShift action_9
action_8 (33) = happyShift action_10
action_8 (34) = happyShift action_11
action_8 (8) = happyGoto action_30
action_8 (9) = happyGoto action_3
action_8 (10) = happyGoto action_4
action_8 (11) = happyGoto action_5
action_8 (12) = happyGoto action_6
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_26

action_10 _ = happyReduce_25

action_11 _ = happyReduce_24

action_12 (35) = happyAccept
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (25) = happyShift action_28
action_13 (26) = happyShift action_29
action_13 _ = happyReduce_2

action_14 _ = happyReduce_5

action_15 _ = happyReduce_7

action_16 (13) = happyShift action_20
action_16 (14) = happyShift action_21
action_16 (19) = happyShift action_22
action_16 (20) = happyShift action_23
action_16 (21) = happyShift action_24
action_16 (22) = happyShift action_25
action_16 (23) = happyShift action_26
action_16 (24) = happyShift action_27
action_16 _ = happyReduce_1

action_17 (14) = happyShift action_7
action_17 (17) = happyShift action_8
action_17 (27) = happyShift action_17
action_17 (32) = happyShift action_9
action_17 (33) = happyShift action_10
action_17 (34) = happyShift action_11
action_17 (6) = happyGoto action_18
action_17 (7) = happyGoto action_15
action_17 (8) = happyGoto action_19
action_17 (9) = happyGoto action_3
action_17 (10) = happyGoto action_4
action_17 (11) = happyGoto action_5
action_17 (12) = happyGoto action_6
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_6

action_19 (13) = happyShift action_20
action_19 (14) = happyShift action_21
action_19 (19) = happyShift action_22
action_19 (20) = happyShift action_23
action_19 (21) = happyShift action_24
action_19 (22) = happyShift action_25
action_19 (23) = happyShift action_26
action_19 (24) = happyShift action_27
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (14) = happyShift action_7
action_20 (17) = happyShift action_8
action_20 (32) = happyShift action_9
action_20 (33) = happyShift action_10
action_20 (34) = happyShift action_11
action_20 (9) = happyGoto action_46
action_20 (10) = happyGoto action_4
action_20 (11) = happyGoto action_5
action_20 (12) = happyGoto action_6
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (14) = happyShift action_7
action_21 (17) = happyShift action_8
action_21 (32) = happyShift action_9
action_21 (33) = happyShift action_10
action_21 (34) = happyShift action_11
action_21 (9) = happyGoto action_45
action_21 (10) = happyGoto action_4
action_21 (11) = happyGoto action_5
action_21 (12) = happyGoto action_6
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (14) = happyShift action_7
action_22 (17) = happyShift action_8
action_22 (32) = happyShift action_9
action_22 (33) = happyShift action_10
action_22 (34) = happyShift action_11
action_22 (8) = happyGoto action_44
action_22 (9) = happyGoto action_3
action_22 (10) = happyGoto action_4
action_22 (11) = happyGoto action_5
action_22 (12) = happyGoto action_6
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (14) = happyShift action_7
action_23 (17) = happyShift action_8
action_23 (32) = happyShift action_9
action_23 (33) = happyShift action_10
action_23 (34) = happyShift action_11
action_23 (8) = happyGoto action_43
action_23 (9) = happyGoto action_3
action_23 (10) = happyGoto action_4
action_23 (11) = happyGoto action_5
action_23 (12) = happyGoto action_6
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (14) = happyShift action_7
action_24 (17) = happyShift action_8
action_24 (32) = happyShift action_9
action_24 (33) = happyShift action_10
action_24 (34) = happyShift action_11
action_24 (8) = happyGoto action_42
action_24 (9) = happyGoto action_3
action_24 (10) = happyGoto action_4
action_24 (11) = happyGoto action_5
action_24 (12) = happyGoto action_6
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (14) = happyShift action_7
action_25 (17) = happyShift action_8
action_25 (32) = happyShift action_9
action_25 (33) = happyShift action_10
action_25 (34) = happyShift action_11
action_25 (8) = happyGoto action_41
action_25 (9) = happyGoto action_3
action_25 (10) = happyGoto action_4
action_25 (11) = happyGoto action_5
action_25 (12) = happyGoto action_6
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (14) = happyShift action_7
action_26 (17) = happyShift action_8
action_26 (32) = happyShift action_9
action_26 (33) = happyShift action_10
action_26 (34) = happyShift action_11
action_26 (8) = happyGoto action_40
action_26 (9) = happyGoto action_3
action_26 (10) = happyGoto action_4
action_26 (11) = happyGoto action_5
action_26 (12) = happyGoto action_6
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (14) = happyShift action_7
action_27 (17) = happyShift action_8
action_27 (32) = happyShift action_9
action_27 (33) = happyShift action_10
action_27 (34) = happyShift action_11
action_27 (8) = happyGoto action_39
action_27 (9) = happyGoto action_3
action_27 (10) = happyGoto action_4
action_27 (11) = happyGoto action_5
action_27 (12) = happyGoto action_6
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (14) = happyShift action_7
action_28 (17) = happyShift action_8
action_28 (27) = happyShift action_17
action_28 (32) = happyShift action_9
action_28 (33) = happyShift action_10
action_28 (34) = happyShift action_11
action_28 (6) = happyGoto action_38
action_28 (7) = happyGoto action_15
action_28 (8) = happyGoto action_19
action_28 (9) = happyGoto action_3
action_28 (10) = happyGoto action_4
action_28 (11) = happyGoto action_5
action_28 (12) = happyGoto action_6
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (14) = happyShift action_7
action_29 (17) = happyShift action_8
action_29 (27) = happyShift action_17
action_29 (32) = happyShift action_9
action_29 (33) = happyShift action_10
action_29 (34) = happyShift action_11
action_29 (6) = happyGoto action_37
action_29 (7) = happyGoto action_15
action_29 (8) = happyGoto action_19
action_29 (9) = happyGoto action_3
action_29 (10) = happyGoto action_4
action_29 (11) = happyGoto action_5
action_29 (12) = happyGoto action_6
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (13) = happyShift action_20
action_30 (14) = happyShift action_21
action_30 (18) = happyShift action_36
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_22

action_32 (14) = happyShift action_7
action_32 (17) = happyShift action_8
action_32 (32) = happyShift action_9
action_32 (33) = happyShift action_10
action_32 (34) = happyShift action_11
action_32 (10) = happyGoto action_35
action_32 (11) = happyGoto action_5
action_32 (12) = happyGoto action_6
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (14) = happyShift action_7
action_33 (17) = happyShift action_8
action_33 (32) = happyShift action_9
action_33 (33) = happyShift action_10
action_33 (34) = happyShift action_11
action_33 (10) = happyGoto action_34
action_33 (11) = happyGoto action_5
action_33 (12) = happyGoto action_6
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_18

action_35 _ = happyReduce_17

action_36 _ = happyReduce_21

action_37 _ = happyReduce_4

action_38 _ = happyReduce_3

action_39 (13) = happyShift action_20
action_39 (14) = happyShift action_21
action_39 _ = happyReduce_13

action_40 (13) = happyShift action_20
action_40 (14) = happyShift action_21
action_40 _ = happyReduce_12

action_41 (13) = happyShift action_20
action_41 (14) = happyShift action_21
action_41 _ = happyReduce_11

action_42 (13) = happyShift action_20
action_42 (14) = happyShift action_21
action_42 _ = happyReduce_10

action_43 (13) = happyShift action_20
action_43 (14) = happyShift action_21
action_43 _ = happyReduce_9

action_44 (13) = happyShift action_20
action_44 (14) = happyShift action_21
action_44 _ = happyReduce_8

action_45 (15) = happyShift action_32
action_45 (16) = happyShift action_33
action_45 _ = happyReduce_15

action_46 (15) = happyShift action_32
action_46 (16) = happyShift action_33
action_46 _ = happyReduce_14

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 (Expr happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (ExprL happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Or happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (And happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  6 happyReduction_6
happyReduction_6 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (Rel happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  7 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Req happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  7 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Rdif happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Rle happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Rlt happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Rge happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Rgt happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Add happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  8 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  9 happyReduction_17
happyReduction_17 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  9 happyReduction_18
happyReduction_18 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Div happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  10 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn10
		 (Const happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  10 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Neg happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  10 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (IdVar happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  12 happyReduction_25
happyReduction_25 (HappyTerminal (NUMINT happy_var_1))
	 =  HappyAbsSyn12
		 (CInt happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  12 happyReduction_26
happyReduction_26 (HappyTerminal (NUMDOUBLE happy_var_1))
	 =  HappyAbsSyn12
		 (CDouble happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ADD -> cont 13;
	SUB -> cont 14;
	MUL -> cont 15;
	DIV -> cont 16;
	LPAR -> cont 17;
	RPAR -> cont 18;
	REQ -> cont 19;
	RNE -> cont 20;
	RLE -> cont 21;
	RLT -> cont 22;
	RGE -> cont 23;
	RGT -> cont 24;
	OR -> cont 25;
	AND -> cont 26;
	NOT -> cont 27;
	DECINT -> cont 28;
	DECFLOAT -> cont 29;
	DECSTRING -> cont 30;
	FIMLINHA -> cont 31;
	NUMDOUBLE happy_dollar_dollar -> cont 32;
	NUMINT happy_dollar_dollar -> cont 33;
	ID happy_dollar_dollar -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
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
