module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN
-- Folding from right

validateEmail email =
    let
        emailPattern =
            "\\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}\\b"

        regex =
            Maybe.withDefault Regex.never <|
                Regex.fromString emailPattern

        isValid =
            Regex.contains regex email
    in
    if isValid then
        ( "Valid email", "green" )

    else
        ( "Invalid email", "red" )
main =
    validateEmail "thedude@rubix.com"
        |> Debug.toString
        |> Html.text
        