--------------------------------------------------------------------------------
module Main where

--------------------------------------------------------------------------------
import Prelude hiding (sum)

--------------------------------------------------------------------------------
-- {BEGIN: sum}

sum :: [Int] -> Int
sum []     = 0
sum (x:xs) = x + sum xs

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: genericSum}

sum' :: (Num a) => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

-- {END}

--------------------------------------------------------------------------------
main :: IO ()
main = do print $ sum  [1..9]
          print $ sum' ([1..9] :: [Int])
