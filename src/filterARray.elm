module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Array

-- MAIN
numbersArray = Array.fromList [ 1,2,3,4,5,6,7 ]

filterArray1 = Array.filter (\x -> x < 6) numbersArray

isOdd number = if (remainderBy 2 number) == 0 then False else True

filterArray2 = Array.filter isOdd (Array.fromList [ 0, 1, 2, 3, 4, 5 ])

isHost name = List.member name [ "Dolores", "Teddy" ]

westWorldCharacters = Array.fromList [ "William", "Dolores", "Teddy" ]

filterArray3 = Array.filter isHost westWorldCharacters

main = filterArray3
        |> Debug.toString
        |> Html.text
        