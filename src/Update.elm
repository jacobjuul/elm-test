module Update exposing (..)

import Models exposing (Model)
import Messages exposing (Msg(..))

import Players.Update


-- UPDATE
update: Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        PlayersMsg subMsg ->
            let
                ( updatedPlayers, cmd ) =
                    Players.Update.update subMsg model.players
            in
                ( { model | players = updatedPlayers }, Cmd.map PlayersMsg cmd )
