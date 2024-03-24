name :: String
name = "Dudley"

myLetter :: Char
myLetter = 'Z'

numOfGifts :: Int
numOfGifts = 36

dudleyGpa :: Double
dudleyGpa = 1.6

main = do 
    putStrLn (name ++ " received " ++ show numOfGifts  ++ " gifts for his birthday.")
    putStrLn (show numOfGifts ++ " gifts? " ++ name ++ " thought out loud. But last year I had 37!")
    putStrLn ("This is when we knew.")
    putStrLn (name ++ " was a very spoiled child.")
    print myLetter
    print dudleyGpa
