module UserTests exposing (recordConstructorTest)

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


recordConstructorTest : Test
recordConstructorTest =
    Test.test
        "returns a User value"
        (\_ ->
            Expect.equal user User.recordConstructor
        )
