import Data.Time

-- Haskell fromGregorian with valid input
validDate :: Day
validDate = fromGregorian 2021 1 15

-- Haskell fromGregorian with invalid input
invalidDate :: Day
invalidDate = fromGregorian 2021 2 30

main :: IO ()
main = do
    putStrLn $ show validDate -- prints 2021-01-15
    putStrLn $ show invalidDate -- prints 2021-02-28
