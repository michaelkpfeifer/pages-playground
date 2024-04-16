module FoldTests exposing (reverseList)

import Expect
import Fold
import Test


reverseList : Test.Test
reverseList =
    Test.test
        "reverses the given list"
        (\_ ->
            Expect.equal
                [ 5, 4, 3, 2, 1 ]
                Fold.rev
        )
