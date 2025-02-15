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


circumference : Shape -> Float
circumference shape =
    case shape of
        Square side ->
            4 * side

        Circle radius ->
            2.0 * pi * radius
