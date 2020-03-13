module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN

mapTuple1 = Tuple.mapFirst (\_ -> "Jim") ( "Roy", "Pam" )

mapTuple2 = Tuple.mapFirst String.reverse ( "time", "life" )

mapTuple3 = Tuple.mapSecond (\x -> x + 1) ( "fringe", 100 )

mapTuple4 = Tuple.mapSecond (String.contains "-") ( "Gamora", "Star-Lord" )

mapTuple5 = Tuple.mapBoth String.length sqrt ( "Newman", 9 )

main = mapTuple5
    
        |> Debug.toString
        |> Html.text
        