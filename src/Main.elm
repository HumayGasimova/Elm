module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)

-- MAIN
lastEl = List.drop 2 [ "Smeagol", "Freddy", "Daenerys", "Jacob" ]

firsEl = List.take 2 [ "Freddy", "Daenerys", "Driver" ]

main = firsEl
        |> Debug.toString
        |> Html.text
        