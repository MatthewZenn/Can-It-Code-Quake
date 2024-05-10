import GHC.Float
import Data.Bits
import Data.Function

q_rsqrt :: Float -> Float
q_rsqrt x = y
  where
    threehalfs = 3/2
    x' = x * 0.5
    i = 0x5f3759df - (castFloatToWord32 x .>>. 1) -- what the fuck?
    y = castWord32ToFloat i                       -- evil floating point bit level hacking
      & f       -- 1st iteration
      -- & f       -- 2nd iteration, this can be removed
    f z = z * (threehalfs - (x' * z * z))


main :: IO ()
main = print (q_rsqrt 0.15625)

