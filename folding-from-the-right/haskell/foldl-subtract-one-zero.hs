main :: IO ()
main = do
  putStrLn $ show (foldl (-) 1 [0])
