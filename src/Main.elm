module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (length)

-- MAIN

revelation str =
    length str

main =
   Html.text <| String.fromInt <| revelation "revelation"
   