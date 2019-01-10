-- basic function declarations. The last type declaration is the return type. 
-- The rest are the arguments. Hence why addThree has 4 Integer declarations

chuckNorris :: (Integral a) => a -> String
chuckNorris 2 = "Not chuck Norris"
chuckNorris 1 = "chuck norris"

add :: Integer -> Integer -> Integer
add x y = x + y

addThree :: Integer -> Integer -> Integer -> Integer
addThree x y z = x + y + z

-- third :: (a, b, c) -> c
-- third (_, _, c) = c


-- => is a constraint, this means that anything after if needs to be of that type. e.g. a needs to be of type Num
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

addTripleVector :: (Num a) => (a, a, a) -> (a, a, a) -> (a, a, a)
addTripleVector (x1, y1, z1) (x2, y2, z2) = (x1 + x2, y1 + y2, z1 + z2)

-- This is similar to an if statement 

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= 18.56 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2  

wealthLevel :: String -> String
wealthLevel money
    | money <= "£10" = "Broke"
    | money <= "£100" = "Less Broke"
    | money <= "£1000" = "Not Broke"
    | money <= "£10000" = "Rich"
    | otherwise = "Minted"

myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT 

initials :: String -> String -> String  
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."  
    where (f:_) = firstname  
          (l:_) = lastname   
             