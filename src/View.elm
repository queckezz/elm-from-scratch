module View exposing (..)

import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Types exposing (..)
import Html exposing (..)

root: Model -> Html Msg
root model =
  div [] [
    h1 [] [ text "News!" ],
    ul []
      (List.map newsItem model.news),
    div [] [ code [] [ text (toString model) ] ]
  ]

newsItem : News -> Html Msg
newsItem news = 
  li []
    [ h3 [] [ text news.headline ] ]