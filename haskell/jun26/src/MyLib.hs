module MyLib (someFunc, game, tickBoard) where

import Control.Monad.State
import Data.Vector (Vector, fromList)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

game :: String
game = "hello world"

tickBoard :: State (Vector (Vector Integer)) ()
tickBoard = do
  put testEmptyBoard

testEmptyBoard :: Vector (Vector Integer)
testEmptyBoard = fromList [fromList [0, 0, 0], fromList [0, 0, 0], fromList [0, 0, 0]]