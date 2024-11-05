module AndMapRTests exposing
    ( andMapRAndResultExtraAndMap
    , andMapRUnderscoreWithErrTest
    , andMapRUnderscoreWithOkTest
    , andMapRWithErrTest
    , andMapRWithOkTest
    , resultMapWithErrTest
    , resultMapWithOkTest
    )

import AndMapR exposing (andMapR, andMapR_)
import Expect
import Result.Extra as RE exposing (andMap)
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


resultMapWithOkTest : Test
resultMapWithOkTest =
    Test.test
        "returns a User value wrapped in Ok"
        (\_ ->
            Expect.equal
                (Result.map5 User
                    (Ok "Alice")
                    (Ok 42)
                    (Ok "41 Winter Street")
                    (Ok "alice@example.com")
                    (Ok Regular)
                )
                (Ok user)
        )


resultMapWithErrTest : Test
resultMapWithErrTest =
    Test.test
        "returns an Err value"
        (\_ ->
            Expect.equal
                (Result.map5 User
                    (Err "Name not found")
                    (Ok 42)
                    (Err "Address not found")
                    (Ok "alice@example.com")
                    (Ok Regular)
                )
                (Err "Name not found")
        )


andMapRUnderscoreWithOkTest : Test
andMapRUnderscoreWithOkTest =
    Test.test
        "works just like Result.map for valid input (using andMapR_)"
        (\_ ->
            Expect.equal
                (Ok User
                    |> andMapR_ (Ok "Alice")
                    |> andMapR_ (Ok 42)
                    |> andMapR_ (Ok "41 Winter Street")
                    |> andMapR_ (Ok "alice@example.com")
                    |> andMapR_ (Ok Regular)
                )
                (Ok user)
        )


andMapRUnderscoreWithErrTest : Test
andMapRUnderscoreWithErrTest =
    Test.test
        "returns the wrong error string"
        (\_ ->
            Expect.equal
                (Ok User
                    |> andMapR_ (Err "Name not found")
                    |> andMapR_ (Ok 42)
                    |> andMapR_ (Err "Address not found")
                    |> andMapR_ (Ok "alice@example.com")
                    |> andMapR_ (Ok Regular)
                )
                (Err "Address not found")
        )


andMapRWithOkTest : Test
andMapRWithOkTest =
    Test.test
        "works just like Result.map for valid input (using andMapR)"
        (\_ ->
            Expect.equal
                (Ok User
                    |> andMapR (Ok "Alice")
                    |> andMapR (Ok 42)
                    |> andMapR (Ok "41 Winter Street")
                    |> andMapR (Ok "alice@example.com")
                    |> andMapR (Ok Regular)
                )
                (Ok user)
        )


andMapRWithErrTest : Test
andMapRWithErrTest =
    Test.test
        "returns the correct error string"
        (\_ ->
            Expect.equal
                (Ok User
                    |> andMapR (Err "Name not found")
                    |> andMapR (Ok 42)
                    |> andMapR (Err "Address not found")
                    |> andMapR (Ok "alice@example.com")
                    |> andMapR (Ok Regular)
                )
                (Err "Name not found")
        )


andMapRAndResultExtraAndMap : Test
andMapRAndResultExtraAndMap =
    Test.test
        "andMapR and Result.Extra.andMap do the same"
        (\_ ->
            Expect.equal
                [ andMapR (Ok 1) (Ok (\n -> n + 1))
                , andMapR (Err 1) (Ok (\n -> n + 1))
                , andMapR (Ok 1) (Err 10)
                , andMapR (Err 1) (Err 10)
                ]
                [ RE.andMap (Ok 1) (Ok (\n -> n + 1))
                , RE.andMap (Err 1) (Ok (\n -> n + 1))
                , RE.andMap (Ok 1) (Err 10)
                , RE.andMap (Err 1) (Err 10)
                ]
        )
