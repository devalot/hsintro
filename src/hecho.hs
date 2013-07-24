--------------------------------------------------------------------------------
module Main where

--------------------------------------------------------------------------------
import System.Environment (getArgs)

--------------------------------------------------------------------------------
main :: IO ()
main = do
  args <- getArgs

  if length args > 0
    then putStrLn ("Hello " ++ head args ++ "!")
    else putStrLn "Hello World!"
