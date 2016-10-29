module Main exposing (..)

import Html exposing (Html, div, text)
import Html.App

import Models exposing (Model, initialModel)
import View exposing (view)
import Messages exposing (Msg(..))
import Update exposing (update)
import Players.Commands exposing (fetchAll)


-- Init the app
init: ( Model, Cmd Msg )
init = 
    ( initialModel, Cmd.map PlayersMsg fetchAll )


-- SUBSCRIPTIONS
subscriptions: Model -> Sub Msg
subscriptions model =
    Sub.none

-- Main
main: Program Never
main =
    Html.App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
