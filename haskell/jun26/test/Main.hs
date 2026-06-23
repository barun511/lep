
module Main (main) where

import Control.Monad.State
import Data.Vector
import MyLib (game, tickBoard)
import Test.HUnit (Assertion, assertEqual)

main :: IO ()
main = do
  testCase
  testTickBoardOnce

testCase :: Assertion
testCase = do
  assertEqual "Test that game is equal" game "hello world"

testTickBoardOnce :: Assertion
testTickBoardOnce = do
  let finalBoard = execState testTickBoardOnceState testBoard
  assertEqual "Can tick board" finalBoard testEmptyBoard

testTickBoardOnceState :: State (Vector (Vector Integer)) ()
testTickBoardOnceState = do
  tickBoard

testBoard :: Vector (Vector Integer)
testBoard = fromList [fromList [0, 0, 0], fromList [0, 1, 0], fromList [0, 0, 0]]

testEmptyBoard :: Vector (Vector Integer)
testEmptyBoard = fromList [fromList [0, 0, 0], fromList [0, 0, 0], fromList [0, 0, 0]]