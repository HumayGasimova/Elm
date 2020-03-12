module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Array

-- MAIN

array1 = Array.fromList [ 1, 2, 3 ]

array2 = Array.fromList [ 4, 5, 6 ]

appendArrays = Array.append array1 array2

addToEnd = Array.push 4 array2

addToBeginning = Array.append (Array.fromList [0]) array1
main = addToBeginning
        |> Debug.toString
        |> Html.text
        