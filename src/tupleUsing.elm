module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN

--calculate perimeter using list
triangleSidesList = [ 5, 4, 6 ]

trianglePerimeterList sides = List.sum sides

--calculate perimeter using tuple

triangleSidesTuple = ( 1, 2, 3)

trianglePerimeterTuple ( a, b, c ) = a + b + c


main =
    trianglePerimeterTuple triangleSidesTuple
        |> Debug.toString
        |> Html.text
        