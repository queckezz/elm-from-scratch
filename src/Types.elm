module Types exposing (..)

import Http

type alias Model =
  {
    news : List News,
    error : Maybe Http.Error
  }

type alias News =
  { headline : String }

type Msg
  = GetNewsResponse (Result Http.Error (List News))