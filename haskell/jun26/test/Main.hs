module Main (main) where
import MyLib (game)
import Test.HUnit (assertEqual, Assertion)

main :: IO ()
main = do
    testCase

testCase :: Assertion
testCase = do
    assertEqual "Test that game is equal" game "hello world"
