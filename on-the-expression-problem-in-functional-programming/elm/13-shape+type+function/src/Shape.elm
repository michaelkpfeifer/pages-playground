module Shape exposing (..)


type alias ShapeOperations =
    { area : () -> Float
    , circumference : () -> Float
    }


square : Float -> ShapeOperations
square side =
    { area = \() -> side * side
    , circumference = \() -> 4 * side
    }


circle : Float -> ShapeOperations
circle radius =
    { area = \() -> pi * radius * radius
    , circumference = \() -> 2 * pi * radius
    }


rectangle : Float -> Float -> ShapeOperations
rectangle a b =
    { area = \() -> a * b
    , circumference = \() -> 2 * (a + b)
    }
