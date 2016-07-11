module State exposing (..)

import Rest exposing (..)
import Types exposing (..)

init : (Model, Cmd Msg)
init = (
  { news = Loading },
  getNews
  )

-- Debug.log similar to `console.log`

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
      GetNewsResponse response ->
        ({ model | news = response }, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none