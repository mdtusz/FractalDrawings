module Lib
  ( sierpinski
  , koch
  ) where

import Diagrams.Prelude as D
import Diagrams.Backend.SVG.CmdLine

sierpinski :: Int -> Colour Double -> Diagram B
sierpinski 1 c = triangle 1 # fc c # lc c
sierpinski n c = s === (s ||| s) # centerX
  where s = sierpinski (n - 1) c


kochLine :: Int -> [V2 Double]
kochLine n
  | n == 0 = kl
  | otherwise = 
    kl' ++ 
    kl' # rotateBy (1/6) ++
    kl' # rotateBy (-1/6) ++
    kl'
  where
    kl' = kochLine (n-1)
    kl = [ unitX, unitX # rotateBy (1/6), unitX # rotateBy (-1/6), unitX ]

kochSnowFlake :: Int -> [V2 Double]
kochSnowFlake n = iterateN 3 (rotateBy (4/6)) (kochLine n) # mconcat

koch :: Int -> Colour Double -> Diagram B
koch n colour = fromOffsets snowFlake # strokeLoop # lc colour # lw 0.01
  where snowFlake = kochSnowFlake n 
