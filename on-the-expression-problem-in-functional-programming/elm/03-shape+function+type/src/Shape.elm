module Shape exposing (Shape(..), area, circumference)


type Shape
    = Square Float
    | Circle Float
    | Rectangle Float Float


area : Shape -> Float
area shape =
    case shape of
        Square side ->
            side * side

        Circle radius ->
            pi * radius * radius

        Rectangle a b ->
            a * b


circumference : Shape -> Float
circumference shape =
    case shape of
        Square side ->
            4 * side

        Circle radius ->
            2.0 * pi * radius

        Rectangle a b ->
            2 * (a + b)
