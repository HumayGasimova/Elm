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

sortByPeople per1 per2 = compare per1.age per2.age

sortAges = List.sortWith sortByPeople [ person1, person2, person3 ]

sortAges2 = List.sortBy .age [ person1, person2, person3 ]

sortNames = List.sortBy String.length [ "Olivia", "Peter", "Walter", "Nina" ]

main = 
        sortNames
        |> Debug.toString
        |> Html.text
        