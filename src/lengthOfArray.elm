module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Array

-- MAIN

-- checkList = Array.isEmpty (Array.fromList [])

checkList = Array.isEmpty (Array.fromList [ "Dolores", "Teddy", "Elsie" ])

-- lengthOfArray = Array.length (Array.fromList [])

lengthOfArray = Array.length (Array.fromList [ 1, 2, 3 ])

main = lengthOfArray
        |> Debug.toString
        |> Html.text
        