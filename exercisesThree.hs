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
mystery :: Int -> Int -> Int -> Bool
mystery m n p = not ((m==n) && (n==p)) 