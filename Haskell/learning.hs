import Data.List

in_range :: Int -> Int -> Int -> Bool
in_range min max x = ilb && iub
  where
    ilb = x >= min 
    iub = x <= max

fac :: Int -> Int
fac n = do
  if n <= 1
    then 1
  else
    n * fac (n - 1)

asc :: Int -> Int -> [Int]
asc n m 
  | m < n = []
  | m == n = [m]
  | m > n = n : asc (n + 1) m

main :: IO ()
main = do
  print (in_range 0 4 2)
  print (fac 5)
  print (head (asc 1 3))
