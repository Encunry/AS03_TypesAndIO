module Main where

import System.Environment (getArgs)

main :: IO ()
main    =  getArgs
        >>= \args ->readFile (head args)
        >>= \text -> writeFile (head (tail args)) text