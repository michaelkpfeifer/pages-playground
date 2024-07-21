module FoldTests exposing (revTest)

import Expect
import Fold
import Test


revTest : Test.Test
revTest =
    Test.test
        "reverses the given list"
        (\_ ->
            Expect.equal
                [ 5, 4, 3, 2, 1 ]
                Fold.rev
        )
