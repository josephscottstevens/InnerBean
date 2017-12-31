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
    | Navbar


colors =
    { focused = Color.rgba 51 51 51 1
    , outOfFocus = Color.rgba 187 187 187 1
    }


stylesheet : Style.StyleSheet Styles variation
stylesheet =
    Style.styleSheet
        [ style None []
        , style Navbar
            [ Color.background Color.white
            , Color.text colors.outOfFocus
            , Font.typeface
                [ Font.importUrl { url = "https://fonts.googleapis.com/css", name = "Montserrat" }
                ]
            , Font.typeface [ Font.font "Montserrat" ]
            , Font.size 16
            ]
        , style Main
            []
        ]


main =
    Element.viewport stylesheet <|
        Element.column Navbar
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
                [ Element.image None [ Attributes.width (Attributes.percent 100), Attributes.maxHeight (Attributes.px 520) ] connectImage
                ]
            ]



-- connectImage is too big for mobile


connectImage =
    { src = "Organized-Fashion.jpg", caption = "CONNECT" }
