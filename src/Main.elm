module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN
multiplyByFive number =
    let
        multiplier =
            5
    in
    number * multiplier
main = 
        multiplier
        |> Debug.toString
        |> Html.text
        