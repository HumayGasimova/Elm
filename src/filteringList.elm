module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)

-- MAIN
-- isOdd number = if (remainderBy 2 number) == 0 then False else True

-- main =
--     [ 0, 1, 2, 3, 4, 5 ]
--         |> List.filter isOdd
--         |> Debug.toString
--         |> Html.text

isHost name = List.member name [ "Dolores", "Teddy", "Maeve" ]
   
main =
    [ "William", "Bernard", "Dolores", "Teddy" ]
        |> List.filter isHost 
        |> Debug.toString
        |> Html.text