module Shape exposing (..)


type Shape
    = Square Float
    | Circle Float


area : Shape -> Float
area shape =
    case shape of
        Square side ->
            side * side

        Circle radius ->
            pi * radius * radius
