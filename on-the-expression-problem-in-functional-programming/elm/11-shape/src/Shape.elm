module Shape exposing (..)


type alias ShapeOperations =
    { area : () -> Float
    }


square : Float -> ShapeOperations
square side =
    { area = \() -> side * side
    }


circle : Float -> ShapeOperations
circle radius =
    { area = \() -> pi * radius * radius
    }
