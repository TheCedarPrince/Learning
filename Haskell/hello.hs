students :: [String]
students = ["Alice", "Ana", "Tim", "Tom"]

printStudents :: Int -> IO ()
printStudents num = do 
  let student = students !! num
  if num <= 4
    then do 
      putStrLn student
      printStudents (num + 1)
    else putStrLn "Printed all students!"


main :: IO ()
main = do
  printStudents 0
