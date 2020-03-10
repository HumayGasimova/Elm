module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)

-- MAIN
guardians = [ "Star-lord", "Groot", "Gamora", "Drax", "Rocket" ]

lengths = List.map String.length guardians

-- List.filter (\x -> x < 6) lengths

filterLength = List.filter ((>) 6) lengths

-- List.map (\x -> String.contains "-" x) guardians
check1 = List.map (String.contains "-") guardians

-- List.map (\x -> String.startsWith "Dr" x) guardians

check2 = List.map (String.startsWith "Dr") guardians
   
main = filterLength
        |> Debug.toString
        |> Html.text
        