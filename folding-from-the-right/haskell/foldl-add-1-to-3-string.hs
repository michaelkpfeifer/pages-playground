main :: IO ()
main = do
  putStrLn $ show (foldl (\acc val -> "(" ++ acc ++ " + " ++ val ++ ")") "0" ["1", "2", "3"])
