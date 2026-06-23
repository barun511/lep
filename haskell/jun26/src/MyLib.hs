module MyLib (someFunc, game, initializeBoard, tickBoard) where

import Control.Monad.State
import Data.Vector (Vector, fromList)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

game :: String
game = "hello world"

initializeBoard :: State (Vector (Vector Integer)) (Vector (Vector Integer))
initializeBoard = get

tickBoard :: State (Vector (Vector Integer)) (Vector (Vector Integer))
tickBoard = do
  put testEmptyBoard
  return testEmptyBoard

testEmptyBoard :: Vector (Vector Integer)
testEmptyBoard = fromList [fromList [0, 0, 0], fromList [0, 0, 0], fromList [0, 0, 0]]