import Data.Time

-- Haskell fromGregorianValid with invalid input
maybeInvalidDate :: Maybe Day
maybeInvalidDate = fromGregorianValid 2021 2 30

main :: IO ()
main = do
    putStrLn $ show maybeInvalidDate -- prints Nothing
