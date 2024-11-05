module User exposing
    ( Role(..)
    , User
    , recordConstructor
    )


type alias User =
    { name : String
    , age : Int
    , address : String
    , email : String
    , role : Role
    }


type Role
    = Admin
    | Regular


recordConstructor : User
recordConstructor =
    User "Alice" 42 "41 Winter Street" "alice@example.com" Regular
