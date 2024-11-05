module AndMapR exposing (andMapR, andMapR_)


andMapR_ : Result x a -> Result x (a -> b) -> Result x b
andMapR_ =
    Result.map2 (|>)


andMapR : Result x a -> Result x (a -> b) -> Result x b
andMapR ra rb =
    case ( ra, rb ) of
        ( Ok v, Ok fn ) ->
            Ok (fn v)

        ( Err e, Ok _ ) ->
            Err e

        ( Ok _, Err e ) ->
            Err e

        ( Err _, Err e ) ->
            Err e
