
module Main (main) where

import Control.Monad.State
import Data.Vector
import MyLib (game, tickBoard)
import Test.HUnit (Assertion, assertEqual)
import System.Random (getStdRandom, Random (randomR), randomRIO, newStdGen)

main :: IO ()
main = do
  random <- getRandomInteger
  testCase
  testTickBoardOnce
  testTickBoardRandomTimes random

getRandomInteger :: IO Integer
getRandomInteger = randomRIO (1,6)

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

testTickBoardRandomTimes :: Integer -> Assertion
testTickBoardRandomTimes randomInteger = do
  let finalBoard = execState (testTickBoardRandomTimesStates randomInteger) blinker1
  let expectedBoard | even randomInteger = blinker1
                    | otherwise = blinker2
  assertEqual "Can tick blinker randomly" finalBoard expectedBoard


testTickBoardRandomTimesStates :: Integer -> State (Vector (Vector Integer)) ()
testTickBoardRandomTimesStates remainingTimes
  | remainingTimes > 0 = do
    tickBoard
    testTickBoardRandomTimesStates (remainingTimes - 1)
  | otherwise = return ()


testBoard :: Vector (Vector Integer)
testBoard = fromList [fromList [0, 0, 0], fromList [0, 1, 0], fromList [0, 0, 0]]

testEmptyBoard :: Vector (Vector Integer)
testEmptyBoard = fromList [fromList [0, 0, 0], fromList [0, 0, 0], fromList [0, 0, 0]]

blinker1 :: Vector (Vector Integer)
blinker1 = fromList [fromList [0, 1, 0], fromList [0, 1, 0], fromList [0, 1, 0]]

blinker2 :: Vector (Vector Integer)
blinker2 = fromList [fromList [0, 0, 0], fromList [1, 1, 1], fromList [0, 0, 0]]