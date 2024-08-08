module ExamplesTests exposing (simpleFoldTest)

import Examples
import Expect
import Test


simpleFoldTest : Test.Test
simpleFoldTest =
    Test.test
        "validates that 0 - 1 is -1"
         (\_ ->
              Expect.equal -1 Examples.simpleFold
         )
