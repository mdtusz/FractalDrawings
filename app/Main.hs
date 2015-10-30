module Main where

-- import Diagrams.Backend.Html5.CmdLine
import Diagrams.Backend.SVG.CmdLine

import Lib


main :: IO ()
main = do
  putStrLn "Generating graphic."
  mainWith argHandler

argHandler n c = [("Sierpinski", sierpinski n c), ("Koch", koch n c)]
