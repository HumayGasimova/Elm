module Main exposing (..)

import Problem1.RippleCarryAdder exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN

main = 
     inverter 1
        |> Debug.toString
        |> Html.text
        