import Data.Time

-- Haskell fromGregorian with invalid input
validUtcTime :: UTCTime
validUtcTime =
  UTCTime (fromGregorian 2021 2 30) (8 * 60 * 60)

-- Haskell fromGregorianValid with valid input
maybeValidUtcTime :: Maybe UTCTime
maybeValidUtcTime =
  case (fromGregorianValid 2021 1 15) of
    Nothing -> Nothing
    Just day -> Just $ UTCTime day (8 * 60 * 60)

-- Haskell fromGregorianValid with invalid input
maybeInvalidUtcTime :: Maybe UTCTime
maybeInvalidUtcTime =
  case (fromGregorianValid 2021 2 30) of
    Nothing -> Nothing
    Just day -> Just $ UTCTime day (8 * 60 * 60)

main :: IO ()
main = do
  putStrLn $ show validUtcTime -- prints 2021-02-28 08:00:00 UTC
  putStrLn $ show maybeValidUtcTime -- prints Just 2021-01-15 08:00:00 UTC
  putStrLn $ show maybeInvalidUtcTime -- prints Nothing
