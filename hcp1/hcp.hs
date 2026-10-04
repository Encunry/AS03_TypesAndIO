module Main where

import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    text <- readFile (head args)
    writeFile (head (tail args)) text