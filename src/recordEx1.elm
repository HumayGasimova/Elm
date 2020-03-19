module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN

type alias TVShow =
 { creator: String
 , age: Int
 , name: String
 }

person = 
 { lastName = "Smith"
 , age = 44
 , name = "Kate"
 }

hasCreator tvShow = String.length tvShow.creator > 0

got = TVShow "" 50 "Black"

accessToValue = person.name

accessToValue2 = .name got

main = 
        accessToValue2
        |> Debug.toString
        |> Html.text
        