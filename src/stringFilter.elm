module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)

-- MAIN

isValid char = 
    char /= '-'

main =
--  Html.text <| String.filter isValid "222-11-5555"
-- anonymous function
    Html.text <| String.filter (\char -> char /= '-') "222-11-5555"
   