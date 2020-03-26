module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN
scoreMultiplier =
    2


highestScores =
    [ 316, 320, 312, 370, 337, 318, 314 ]


doubleScores scores =
    List.map (\x -> x * scoreMultiplier) scores
    
scoresLessThan320 scores =
    List.filter isLessThan320 scores


isLessThan320 score =
    score < 320

main = 
        -- scoresLessThan320 highestScores
        doubleScores highestScores
        |> Debug.toString
        |> Html.text
        