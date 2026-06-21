module Main where

import MyLib (game, someFunc)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  someFunc
