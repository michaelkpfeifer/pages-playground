module ShapeTests exposing (circleAreaTest, rectangleAreaTest, squareAreaTest)

import Expect exposing (..)
import Shape exposing (..)
import Test


squareAreaTest : Test.Test
squareAreaTest =
    Test.test
        "area of square"
        (\_ ->
            (square 2).area () |> Expect.equal 4
        )


circleAreaTest : Test.Test
circleAreaTest =
    Test.test
        "area of circle"
        (\_ ->
            (circle 2).area () |> Expect.within (Absolute 0.01) (pi * 2 * 2)
        )


rectangleAreaTest : Test.Test
rectangleAreaTest =
    Test.test
        "area of rectangle"
        (\_ ->
            (rectangle 2 4).area () |> Expect.equal 8
        )
