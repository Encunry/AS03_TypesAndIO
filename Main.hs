module Main where

import qualified Data.ByteString.Lazy.Char8 as L8
import Network.HTTP.Client
import Network.HTTP.Client.TLS
import System.Environment

main :: IO ()
main = do
    args <- getArgs
    manager <- newManager tlsManagerSettings
    request <- parseRequest ("https://wttr.in/~" ++ (head args) ++ "?format=3")
    response <- httpLbs request manager
    L8.putStrLn (responseBody response)