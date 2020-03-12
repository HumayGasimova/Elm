module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Array

-- MAIN

myArray = Array.fromList [ 1, 2, 3, 4 ]
list = Array.toList myArray

myArray2 = Array.fromList [ "Doctor", "River", "Clara", "Tardis" ]
myArrayWithIndexes = Array.toIndexedList myArray2

initArray = Array.initialize 5 (always 0)
initArray2 = Array.repeat 5 0

identityArray = Array.initialize 5 identity

main = identityArray
        |> Debug.toString
        |> Html.text
        