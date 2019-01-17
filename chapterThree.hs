-- 3.1 Give another version of the definition of 'exclusive or' which works informally
-- thus: 'exclusive or of x and y will be True if either x is True and y is False. or
-- vice versa'. 

exOr :: Bool -> Bool -> Bool 
exOr True x = not x
exOr False x = x

-- 3.2 Give the 'box and line' diagram corresponding to your answer to the previous question. 

--3.3 Using literals on the left-hand side we can make the truth table for a function
--into its Haskell definition. Complete the following definition of exOr in this style.

-- exOr True True = False
-- exOr True False = True

-- 3.4 Give two different definitions of the nAnd function which returns the result True except when both its arguments are True. Give a
-- diagram illustrating one of your definitions. 

nAnd :: Bool -> Bool -> Bool
nAnd True True = False
nAnd True False = True
nAnd False False = True

nAnd2 :: Bool -> Bool -> Bool
nAnd2 x y = not (x && y)

-- 3.5 Give line-by-line calculations of
--     nAnd True True
--     nAnd True False
-- for each of your definitions of nAnd in the previous exercise 

-- 3.6 Explain the effect of the function defined here:
mystery :: Int -> Int -> Int -> Bool -- Takes 3 Int args and returns a Bool
mystery m n p = not ((m==n) && (n==p)) -- checks if m and n are equal, and if n and p are equal. Returns false if they are. Returns True if m and n are different

-- 3.7 Define a function

-- so that the result of threeDifferent m n p is True only if all three of the
-- numbers m, n and p are different.
-- What is your answer for threeDiff erent 3 4 3? Explain why you get the
-- answer that you do. 

threeDifferent :: Int -> Int -> Int -> Bool
threeDifferent m n p = (m/=n) && (n/=p) && (m/=p)

-- if this is given 3 4 3, it returns True. It does this because the pattern in given True && True which evaluates to True

threeDifferent2 :: Int -> Int -> Int -> Bool
threeDifferent2 m n p = (m/=n) || (n/=p) || (m/=p)

-- if this is given 3 4 3 it evaluates toi False because its checking True or True or False.

-- 3.8 This question is about the function

-- which returns the value True only if all four of its arguments are equal.
-- Give a definition of fourEqua1 modelled on the definition of threeEqua1
-- above. Now give a definition off ourEqual which u.wv the function threeEqual
-- in its detinition. Compare your two answers. 

fourEqual :: Int -> Int -> Int -> Int -> Bool
fourEqual a b c d = (a==b) && (b==c) && (c==d)

fourEqual2 :: Int -> Int -> Int -> Int -> Bool
fourEqual2 a b c d = threeDifferent2 a b c && (a==d)