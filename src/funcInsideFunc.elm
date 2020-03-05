module Main exposing (..)
import Browser
import Html exposing (..)

-- MAIN
escapeEarth myVelocity mySpeed fuelStatus =
    let
        escapeVelocityInKmPerSec =
            11.186

        orbitalSpeedInKmPerSec =
            7.67
-- function
        -- whereToLand fuel =
        --     if fuel == "low" then
        --         "Land on droneship"

        --     else
        --         "Land on launchpad"

-- constant
        whereToLand =
            if fuelStatus  == "low" then
                "Land on droneship"

            else
                "Land on launchpad"
    in
    if myVelocity > escapeVelocityInKmPerSec then
        "Godspeed"

    else if mySpeed == orbitalSpeedInKmPerSec then
        "Stay in orbit"

    else
        --function
        -- whereToLand fuelStatus
        --constant
        whereToLand 
        
main =
    escapeEarth 10 6.7 "low"
        |> Html.text
   