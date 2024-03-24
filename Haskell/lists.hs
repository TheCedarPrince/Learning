elem :: (Eq a) => a -> [a] -> Bool
elem x xs = do
  if xs == []
    then False
  else if head xs == x
    then True
  else 
    Main.elem x (tail xs)

nub :: (Eq a) => [a] -> [a]
nub xs = do
  | xs == [] = xs
  | 

main :: IO ()
main = do
  print (Main.elem 2 [1, 2, 3])
