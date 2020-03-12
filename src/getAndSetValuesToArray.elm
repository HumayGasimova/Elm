module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Array

-- MAIN

myArray = Array.fromList [ 0, 1, 2, 3, 4 ]


getValue = Array.get 3 myArray

setValue = Array.set 3 8 myArray

main = setValue
        |> Debug.toString
        |> Html.text
        