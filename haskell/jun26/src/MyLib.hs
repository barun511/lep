module MyLib (someFunc, game, initializeBoard, tickBoard) where

import Data.Vector (Vector)
import Control.Monad.State

someFunc :: IO ()
someFunc = putStrLn "someFunc"

game :: String
game = "hello world"

initializeBoard :: State (Vector (Vector Integer)) (Vector (Vector Integer))
initializeBoard = get

tickBoard :: State (Vector (Vector Integer)) (Vector (Vector Integer))
tickBoard = get