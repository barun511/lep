module Main (main) where
import MyLib (game)
import Test.HUnit (assertEqual, Assertion)
import Data.Vector

main :: IO ()
main = do
    testCase
    testInitializeBoard

testCase :: Assertion
testCase = do
    assertEqual "Test that game is equal" game "hello world"

testInitializeBoard :: Assertion
testInitializeBoard = do
    assertEqual "Can initialize board" (initializeBoard testBoard) testBoard


testBoard :: Vector (Vector Integer)
testBoard = fromList [fromList [0,0,0], fromList [0,1,0], fromList [0,0,0]]