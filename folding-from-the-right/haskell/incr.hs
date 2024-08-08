main :: IO ()
main = do
  putStrLn $ show (incr [1, 2, 3])
  where
    incr xs = foldr (\x acc -> (x + 1):acc) [] xs
