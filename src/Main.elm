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

multiplier =
    6
main = 
        multiplier
        |> Debug.toString
        |> Html.text
        