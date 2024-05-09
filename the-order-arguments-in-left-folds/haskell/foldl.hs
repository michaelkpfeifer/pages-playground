rev :: [Int]
rev =
    let
        collection = [1, 2, 3, 4, 5]
        initialAccumulator = []
        combiningFunction =
          \currentAccumulator currentItem -> currentItem : currentAccumulator
    in
    foldl combiningFunction initialAccumulator collection

main :: IO ()
main = do
    putStrLn $ show rev -- prints [5,4,3,2,1]
