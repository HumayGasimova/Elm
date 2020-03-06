module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)

-- MAIN

isValid char = 
    char /= '-'

main =
 Html.text <| String.pad 10 '*' "5"
   