--------------------------------------------------------------------------------
module Main where

--------------------------------------------------------------------------------
import Control.Monad (forM_)
import Prelude (String, Int, ($), (++))
import System.Environment (getArgs)
import System.IO

-- {BEGIN: age}

--------------------------------------------------------------------------------
data Maybe a = Nothing | Just a

--------------------------------------------------------------------------------
personAge :: String -> Maybe Int
personAge "Peter" = Just 38
personAge "Joe"   = Just 21
personAge _       = Nothing                    

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
