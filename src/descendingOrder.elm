module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)

-- MAIN
descending a b =
    case compare a b of
        LT ->
            GT

        GT ->
            LT

        EQ ->
            EQ

main =
    [ 316, 320, 312, 370, 337, 318, 314 ]
        |> List.sortWith descending
        |> Debug.toString
        |> Html.text
   