module AndMapTests exposing
    ( andMapWithJustTest
    , andMapWithNothingTest
    , maybeMapWithJustTest
    , maybeMapWithNothingTest
    )

import AndMap exposing (andMap)
import Expect
import Test exposing (Test)
import User exposing (Role(..), User)


user : User
user =
    { name = "Alice"
    , age = 42
    , address = "41 Winter Street"
    , email = "alice@example.com"
    , role = Regular
    }


maybeMapWithJustTest : Test
maybeMapWithJustTest =
    Test.test
        "returns a User value wrappend in Just"
        (\_ ->
            Expect.equal
                (Maybe.map5 User
                    (Just "Alice")
                    (Just 42)
                    (Just "41 Winter Street")
                    (Just "alice@example.com")
                    (Just Regular)
                )
                (Just user)
        )


maybeMapWithNothingTest : Test
maybeMapWithNothingTest =
    Test.test
        "returns Nothing"
        (\_ ->
            Expect.equal
                (Maybe.map5 User
                    Nothing
                    (Just 42)
                    Nothing
                    (Just "alice@example.com")
                    (Just Regular)
                )
                Nothing
        )


andMapWithJustTest : Test
andMapWithJustTest =
    Test.test
        "works just like Maybe.map5 for valid input"
        (\_ ->
            Expect.equal
                (Just User
                    |> andMap (Just "Alice")
                    |> andMap (Just 42)
                    |> andMap (Just "41 Winter Street")
                    |> andMap (Just "alice@example.com")
                    |> andMap (Just Regular)
                )
                (Just user)
        )


andMapWithNothingTest : Test
andMapWithNothingTest =
    Test.test
        "works just like Maybe.map5 for invalid input"
        (\_ ->
            Expect.equal
                (Just User
                    |> andMap Nothing
                    |> andMap (Just 42)
                    |> andMap Nothing
                    |> andMap (Just "alice@example.com")
                    |> andMap (Just Regular)
                )
                Nothing
        )
