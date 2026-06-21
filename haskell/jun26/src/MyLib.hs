module MyLib (someFunc, game, initializeBoard) where

import Data.Vector (Vector)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

game :: String
game = "hello world"

initializeBoard :: Vector (Vector Integer) -> Vector (Vector Integer)
initializeBoard board = board