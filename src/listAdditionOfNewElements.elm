module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN
numbers = [ 1, 2, 3 ]

addElementToBegining = 0 :: numbers

addElementToEnd = List.drop 2 numbers
main = 
        addElementToEnd
        |> Debug.toString
        |> Html.text
        