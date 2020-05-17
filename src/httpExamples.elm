module HttpExamples exposing (Model)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)

import Http


-- MAIN

main = 
   Browser.sandbox { init = init, update = update, view = view }

-- MODEL

type alias Model =
    List String

-- UPDATE

type Msg
    = SendHttpRequest
    | DataReceived (Result Http.Error String)

url : String
url =
    "http://localhost:5016/old-school.txt"


getNicknames : Cmd Msg
getNicknames =
    Http.get
        { url = url
        , expect = Http.expectString DataReceived
        }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SendHttpRequest ->
            ( model, getNicknames )

-- VIEW
view : Model -> Html Msg
view model =
    div []
        [ button [ onClick SendHttpRequest ]
            [ text "Get data from server" ]
        , h3 [] [ text "Old School Main Characters" ]
        , ul [] (List.map viewNickname model)
        ]


viewNickname : String -> Html Msg
viewNickname nickname =
    li [] [ text nickname ]

        