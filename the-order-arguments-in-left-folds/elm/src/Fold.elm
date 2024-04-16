module Fold exposing (rev)


rev : List Int
rev =
    let
        collection =
            [ 1, 2, 3, 4, 5 ]

        initialAccumulator =
            []

        combiningFunction =
            \currentItem currentAccumulator -> currentItem :: currentAccumulator
    in
    List.foldl combiningFunction initialAccumulator collection
