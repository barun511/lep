{-# LANGUAGE TupleSections #-}

module Main (main) where

import Control.Monad.State
import Data.Vector
import MyLib (game, initializeBoard, tickBoard)
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
  assertEqual "Can initialize board" (evalState initializeBoard testBoard) testBoard

testTickBoardOnce :: Assertion
testTickBoardOnce = do
  let (_, finalBoard) = runState testTickBoardOnceState testBoard
  assertEqual "Can tick board" finalBoard testEmptyBoard

testTickBoardOnceState :: State (Vector (Vector Integer)) ()
testTickBoardOnceState = do
  _ <- initializeBoard
  tickBoard

testBoard :: Vector (Vector Integer)
testBoard = fromList [fromList [0, 0, 0], fromList [0, 1, 0], fromList [0, 0, 0]]

testEmptyBoard :: Vector (Vector Integer)
testEmptyBoard = fromList [fromList [0, 0, 0], fromList [0, 0, 0], fromList [0, 0, 0]]