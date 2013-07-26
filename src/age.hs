--------------------------------------------------------------------------------
module Main where

--------------------------------------------------------------------------------
import Control.Monad (forM_)
import Prelude (String, Int, ($), (++))
import System.Environment (getArgs)
import System.IO

-- {BEGIN: maybe}
--------------------------------------------------------------------------------
data Maybe a = Nothing | Just a

-- {END}                         
-- {BEGIN: personAge}

--------------------------------------------------------------------------------
personAge :: String -> Maybe Int
personAge "Peter" = Just 38
personAge "Joe"   = Just 21
personAge _       = Nothing                    

-- {END}
-- {BEGIN: main}                    

--------------------------------------------------------------------------------
main :: IO ()
main = do
  names <- getArgs

  forM_ names $ \name -> do
    putStr (name ++ ": ")
    case personAge name of
      Nothing  -> putStrLn "Unknown"
      Just age -> print age

-- {END}
