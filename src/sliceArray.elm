module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Array

-- MAIN

myArray = Array.fromList [ 0, 1, 2, 3, 4, 5 ]

sliceArray = Array.slice 0 3 myArray

sliceArrayNegative = Array.slice 0 -1 myArray
main = sliceArrayNegative
        |> Debug.toString
        |> Html.text
        