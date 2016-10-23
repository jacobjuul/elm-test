module View exposing (..)

import Html exposing (Html, div, text)
import Html.App

import Models exposing (Model)
import Messages exposing (Msg(..))
import Players.List

-- VIEW

view: Model -> Html Msg
view model =
    div []
        [ page model ]


page: Model -> Html Msg
page model =
    Html.App.map PlayersMsg (Players.List.view model.players)
