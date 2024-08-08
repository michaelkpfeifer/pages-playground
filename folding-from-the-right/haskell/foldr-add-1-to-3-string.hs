main :: IO ()
main = do
  putStrLn $ show (foldr (\val acc -> "(" ++ val ++ " ⊕ " ++ acc ++ ")") "0" ["1", "2", "3"])
