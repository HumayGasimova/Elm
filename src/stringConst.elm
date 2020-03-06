module Main exposing (..)
import Browser
import Html exposing (..)

-- MAIN

revelation =

-- multiple line
    -- """
    -- It became very clear to me sitting out there today
    -- that every decision I've made in my entire life has
    -- been wrong. My life is the complete "opposite" of
    -- everything I want it to be. Every instinct I have,
    -- in every aspect of life, be it something to wear,
    -- something to eat - it's all been wrong.
    -- """
-- single line
     "Michael Scott's '\\' Rabies Awareness \"Fun Run\" Race for the Cure"
main =
   Html.text revelation
   