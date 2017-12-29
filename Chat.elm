module Chat exposing (..)

import Color exposing (rgba)
import Element exposing (..)
import Element.Attributes exposing (..)
import Style exposing (..)
import Style.Color as Color
import Style.Font as Font


type Styles
    = None
    | Label
    | Navbar
    | Main


colors =
    { focusedText = rgba 51 51 51 1
    , outOfFocusText = rgba 187 187 187 1
    }


stylesheet : StyleSheet Styles variation
stylesheet =
    Style.styleSheet
        [ style None []
        , style Navbar
            [ Color.background Color.white
            , Font.typeface [ Font.font "Montserrat" ]
            ]
        , style Main
            []
        ]


main =
    Element.viewport stylesheet <|
        column Main
            [ height fill ]
            [ row Navbar [] navbar
            , row None
                [ height fill
                , width fill
                ]
                [ body ]
            ]


navbar =
    [ el Navbar [ padding 20 ] (text "Navbar")
    , el Navbar [ padding 20 ] (text "Testbar")
    ]


body =
    column None
        [ alignLeft
        , width fill
        ]
        []
