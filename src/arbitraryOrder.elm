module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)

-- MAIN
evilometer a b =
    case ( a, b ) of
        ( "one", "two" ) ->
            LT

        ( "one", "three" ) ->
            LT

        ( "two", "one" ) ->
            GT

        ( "two", "three" ) ->
            LT

        ( "three", "one" ) ->
            GT

        ( "three", "two" ) ->
            GT

        _ ->
            GT

main =
    [ "one","three","two" ]
        |> List.sortWith evilometer
        |> Debug.toString
        |> Html.text
   