module Main exposing (..)
import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import String exposing (trim, length, isEmpty, toLower, toUpper, any, all)
import Char exposing (isDigit, isLower, isUpper)

-- MAIN

main = 
   Browser.sandbox { init = init, update = update, view = view }

   -- MODEL

type alias Model =
  { name : String
  , password : String
  , passwordAgain : String
  , age : String
  , validate : Bool
  }

init : Model
init =
  Model "" "" "" "" False


-- UPDATE

type Msg
  = Name String
    | Password String
    | PasswordAgain String
    | Age String
    | Validate

update : Msg -> Model -> Model
update msg model =
  case msg of
    Name name ->
      { model | name = name, validate = False }
 
    Password password ->
      { model | password = password, validate = False }
 
    PasswordAgain password ->
      { model | passwordAgain = password, validate = False }
 
    Age age ->
      { model | age = trim age, validate = False }
 
    Validate ->
      { model | validate = True }


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ input [type_ "text",  placeholder "Name", onInput Name ] []
    , input [type_ "password",  placeholder "Password", onInput Password ] []
    , input [type_ "password",  placeholder "Re-enter Password", onInput PasswordAgain ] []
    , input [type_ "number",  placeholder "Age", onInput Age ] []
    , button [ onClick Validate ] [ text "Submit" ]
    , viewValidation model
    ]

viewValidation : Model -> Html msg
viewValidation model =
  let
    (color, message) =
      if model.validate then
        if length model.password < 8 then
          ("red", "Password too short")
        else if any isUpper model.password == False then
        -- Alternatively, instead of checking if there is at least one character that is Upper, we can convert the input toLower and check if it changed
        -- else if model.password == toLower model.password then
          ("red", "Password does not contain an upper case character")
        else if any isLower model.password == False then
        -- Alternatively, instead of checking if there is at least one character that is lower, we can convert the input toUpper and check if it changed
        -- else if model.password == toUpper model.password then
          ("red", "Password does not contain a lower case character")
        else if any isDigit model.password == False then
          ("red", "Password does not contain a numeric character")
        else if model.password /= model.passwordAgain then
          ("red", "Passwords do not match!")
        else if isEmpty model.age || all isDigit model.age == False then
          ("red", "Age is not a positive integer number")
        else ("green", "OK")
      else ("white", "")
  in
    div [ style "color" color ] [ text message ]