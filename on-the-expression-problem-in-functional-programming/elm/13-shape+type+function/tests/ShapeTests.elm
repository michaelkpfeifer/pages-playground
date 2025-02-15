module ShapeTests exposing
    ( circleAreaTest
    , circleCircumferenceTest
    , rectangleAreaTest
    , rectangleCircumferenceTest
    , squareAreaTest
    , squareCircumferenceTest
    )

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


squareCircumferenceTest : Test.Test
squareCircumferenceTest =
    Test.test
        "circumference of square"
        (\_ ->
            (square 2).circumference () |> Expect.equal 8
        )


circleCircumferenceTest : Test.Test
circleCircumferenceTest =
    Test.test
        "circumference of circle"
        (\_ ->
            (circle 2).circumference () |> Expect.within (Absolute 0.01) (2 * pi * 2)
        )


rectangleCircumferenceTest : Test.Test
rectangleCircumferenceTest =
    Test.test
        "circumference of rectangle"
        (\_ ->
            (rectangle 2 4).circumference () |> Expect.equal 12
        )
