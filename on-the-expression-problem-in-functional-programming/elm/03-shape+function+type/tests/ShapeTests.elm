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
            area (Square 2) |> Expect.equal 4
        )


circleAreaTest : Test.Test
circleAreaTest =
    Test.test
        "area of circle"
        (\_ ->
            area (Circle 2) |> Expect.within (Absolute 0.01) (pi * 2 * 2)
        )


rectangleAreaTest : Test.Test
rectangleAreaTest =
    Test.test
        "area of rectangle"
        (\_ ->
            area (Rectangle 2 4) |> Expect.equal 8
        )


squareCircumferenceTest : Test.Test
squareCircumferenceTest =
    Test.test
        "circumference of square"
        (\_ ->
            circumference (Square 2) |> Expect.equal 8
        )


circleCircumferenceTest : Test.Test
circleCircumferenceTest =
    Test.test
        "circumference of circle"
        (\_ ->
            circumference (Circle 2) |> Expect.within (Absolute 0.01) (2 * pi * 2)
        )


rectangleCircumferenceTest : Test.Test
rectangleCircumferenceTest =
    Test.test
        "circumference of rectangle"
        (\_ ->
            circumference (Rectangle 2 4) |> Expect.equal 12
        )
