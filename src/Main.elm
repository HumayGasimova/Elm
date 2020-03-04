module Main exposing (..)
import Browser
import Html exposing (..)

-- MAIN

computeSpeed distance time =
    distance / time

computeTime startTime endTime =
    endTime - startTime

escapeEarth myVelocity mySpeed =
    if myVelocity > 11.186 then
        "Godspeed"

    else if mySpeed == 7.67 then
        "Stay in orbit"

    else
        "Come back"
        
main = 
  -- Html.text (escapeEarth 11.0 (computeSpeed 7.67 (computeTime 2 3)))
  computeTime 2 3
  |> computeSpeed 7.67
  |> escapeEarth  11.0
  |> Html.text
   