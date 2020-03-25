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

person1 = 
 { lastName = "Smith"
 , age = 44
 , name = "Kate"
 }


person2 = Person "May" 10 "Black"
person3 = Person "Jinny" 50 "Good"

incrementEpisode person = { person | age = person.age + 1 }

changePerson1 person = {person | lastName = "Many", age = person.age + 1}

person1Updated = changePerson1 person1

main = 
        person1Updated
        |> Debug.toString
        |> Html.text
        