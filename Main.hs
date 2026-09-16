module Main where

import qualified Data.ByteString.Lazy.Char8 as L8
import Network.HTTP.Client
import Network.HTTP.Client.TLS
import System.Environment

main :: IO ()
main = do
  putStrLn "Load the current weather from https://wttr.in"