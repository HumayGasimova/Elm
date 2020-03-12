module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Array

-- MAIN
-- Folding from right

myArray = Array.fromList [ 1, 2, 3, 4 ]
guardians = Array.fromList [ "Star-lord", "Groot", "Gamora", "Drax", "Rocket" ]

foldingArray1 = Array.foldl (+) 0 myArray

foldingArray2 = Array.foldl (*) 1 myArray

foldingArray3 = Array.foldl (\x a -> (String.length x) + a) 0 guardians

-- Folding from left

myArray2 = Array.fromList [ 4, 2, 3 ]

foldingArray4 = Array.foldr (^) 1 myArray

main = foldingArray4
        |> Debug.toString
        |> Html.text
        