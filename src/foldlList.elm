module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)

-- MAIN
-- sum = List.foldl (\x a -> x + a) 0 [ 1, 2, 3, 4 ]

sum = List.foldl (+) 0 [ 1, 2, 3, 4 ]

-- product = List.foldl (\x a -> x * a) 1 [ 1, 2, 3, 4 ]

product = List.foldl (*) 1 [ 1, 2, 3, 4 ]
   
main = product
        |> Debug.toString
        |> Html.text
        