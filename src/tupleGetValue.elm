module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN
triangleSidesTuple = ( 1, 2, 3)

getFirstValue = Tuple.first ( 5, 10 )

getSecondValue = Tuple.second ( 5, 10 )

main = getSecondValue
    
        |> Debug.toString
        |> Html.text
        