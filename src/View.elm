module View exposing (..)

import Html.Attributes exposing (..)
import CDN exposing (bootstrap)
import Html.Events exposing (..)
import Types exposing (..)
import Html exposing (..)

root: Model -> Html Msg
root model =
  div [] [
    h1 [] [bootstrap.css, text "News!" ],
      case model.news of
        Succeed news ->
          ul [] (List.map newsItem news)
        Loading ->
          text "Loading"
        Failed error ->
          p [] [ text (toString error) ],
    div [] [ code [] [ text (toString model) ] ]
  ]

newsItem : News -> Html Msg
newsItem news = 
  li []
    [ h3 [] [ text news.headline ] ]