module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Array

-- MAIN
guardians = Array.fromList [ "Star-lord", "Groot", "Gamora", "Drax", "Rocket" ]

mapArray1 = Array.map (\x -> x * 2) (Array.fromList [ 1, 2, 3 ])

mapArray2 = Array.map String.length guardians

main = mapArray2
        |> Debug.toString
        |> Html.text
        