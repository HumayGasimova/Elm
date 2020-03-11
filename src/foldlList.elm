module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)

-- MAIN
-- sum = List.foldl (\x a -> x + a) 0 [ 1, 2, 3, 4 ]

sum = List.foldl (+) 0 [ 1, 2, 3, 4 ]

-- product = List.foldl (\x a -> x * a) 1 [ 1, 2, 3, 4 ]

product = List.foldl (*) 1 [ 1, 2, 3, 4 ]
   
guardians = [ "Star-lord", "Groot", "Gamora", "Drax", "Rocket" ]

guardiansLength = List.foldl (\x a -> (String.length x) + a) 0 guardians
main = guardiansLength
        |> Debug.toString
        |> Html.text
        