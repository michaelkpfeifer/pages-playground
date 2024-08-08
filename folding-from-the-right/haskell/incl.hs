main :: IO ()
main = do
  putStrLn $ show (incl [1, 2, 3])
  putStrLn $ show (incl' [1, 2, 3])
  putStrLn $ show (incl'' [1, 2, 3])
  where
    incl xs = foldl (\acc x -> (x + 1):acc) [] xs
    incl' = reverse.incl
    incl'' xs = foldl (\acc x -> acc ++ [x + 1]) [] xs
