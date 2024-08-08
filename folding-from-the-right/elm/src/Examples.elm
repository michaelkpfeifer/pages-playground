module Examples exposing (simpleFold)

simpleFold : Int
simpleFold =
    List.foldl (-) 1 [0]
