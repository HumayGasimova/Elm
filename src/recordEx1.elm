module Main exposing (..)
import Browser
import Html exposing (..)
import String exposing (..)
import Html
import Regex

-- MAIN

type alias Person =
 { lastName: String
 , age: Int
 , name: String
 }

person = 
 { lastName = "Smith"
 , age = 44
 , name = "Kate"
 }

creatorLastNameIsGiven per = String.length per.lastName > 0

got = Person "" 50 "Lisa"

accessToValue = person.name

accessToValue2 = .name got

main = 
        creatorLastNameIsGiven got
        |> Debug.toString
        |> Html.text
        