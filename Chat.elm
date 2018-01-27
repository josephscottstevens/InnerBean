module Chat exposing (..)

import Color
import Element
import Element.Attributes as Attributes
import Style exposing (style)
import Style.Color as Color
import Style.Font as Font


type Styles
    = None
    | Main
    | TextHeader


colors =
    { focused = Color.rgba 51 51 51 1
    , outOfFocus = Color.rgba 187 187 187 1
    , textHeader = Color.rgb 102 108 112
    }


stylesheet : Style.StyleSheet Styles variation
stylesheet =
    Style.styleSheet
        [ style None []
        , style Main
            [ Color.background Color.white
            , Color.text colors.outOfFocus
            , Font.typeface [ Font.importUrl { url = "https://fonts.googleapis.com/css?family=Montserrat", name = "Montserrat" } ]
            , Font.size 16
            ]
        , style TextHeader
            [ Font.capitalize
            , Font.underline
            , Font.size 20
            , Color.text colors.textHeader
            ]
        ]


main =
    Element.viewport stylesheet <|
        Element.column Main
            [ Attributes.width Attributes.fill ]
            [ Element.row None
                [ Attributes.spacing 20, Attributes.center, Attributes.padding 20 ]
                [ Element.el None [] (Element.text "HOME")
                , Element.el None [] (Element.text "CONNECT")
                , Element.el None [] (Element.text "FOOD")
                , Element.el None [] (Element.text "DRINKS")
                , Element.el None [] (Element.text "WEEKLY SPECIALS")
                , Element.el None [] (Element.text "SEASONAL SPECIALS")
                , Element.el None [] (Element.text "OUR STORY")
                , Element.el None [] (Element.text "OUR COFFEE")
                , Element.el None [] (Element.text "ART SHOWS")
                , Element.el None [] (Element.text "PHOTOS")
                , Element.el None [] (Element.text "CONNECT")
                ]
            , Element.row None
                []
                [ Element.image None
                    [ Attributes.width (Attributes.percent 100)
                    , Attributes.maxHeight (Attributes.px 520)
                    ]
                    { src = "Organized-Fashion.jpg", caption = "CONNECT" }
                ]
            , Element.row None
                [ Attributes.center
                , Attributes.minWidth (Attributes.px 1000)
                ]
                [ Element.row TextHeader [] [ Element.text "HOURS" ]
                , Element.row None [] [ Element.text "Mon-Sat: 8am-3pm (breakfast until 10:30am)" ]
                , Element.row None [] [ Element.text "Sunday:     Closed" ]
                ]
            ]
