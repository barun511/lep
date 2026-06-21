module Main (main) where

import Data.Vector
import MyLib (game, initializeBoard)
import Test.HUnit (Assertion, assertEqual)

main :: IO ()
main = do
  testCase
  testInitializeBoard
  testTickBoardOnce

testCase :: Assertion
testCase = do
  assertEqual "Test that game is equal" game "hello world"

testInitializeBoard :: Assertion
testInitializeBoard = do
  assertEqual "Can initialize board" (initializeBoard testBoard) testBoard

testTickBoardOnce :: Assertion
testTickBoardOnce = do
    let board = initializeBoard testBoard
    let new_board = tickBoard board
    assertEqual "One tick must die" new_board testEmptyBoard

testBoard :: Vector (Vector Integer)
testBoard = fromList [fromList [0, 0, 0], fromList [0, 1, 0], fromList [0, 0, 0]]

testEmptyBoard :: Vector (Vector Integer)
testEmptyBoard = fromList [fromList [0, 0, 0], fromList [0, 0, 0], fromList [0, 0, 0]]