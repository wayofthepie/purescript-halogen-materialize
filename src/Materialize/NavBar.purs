module Materialize.NavBar where

import Prelude (($), map)
import Data.Array ((:))
import Data.Maybe (Maybe, maybe)
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

import Materialize.Class as Class
import Materialize.Icon


newtype NavigationLinks p i = NavigationLinks (HH.HTML p i)

-- | Construct a navbar with the given logo and list of links.
navBar :: forall p i. String -> NavigationLinks p i -> HH.HTML p i
navBar logo (NavigationLinks linksHtml) = HH.nav
  []
  [ buildInnerDiv ]
 where
  buildInnerDiv :: HH.HTML p i
  buildInnerDiv = HH.div
    [ HP.class_ Class.navWrapper ]
    [ logoHtml
    , linksHtml
    ]

  logoHtml :: HH.HTML p i
  logoHtml = HH.a
    [ HP.classes [ Class.brandLogo, Class.right ] ] 
    [ HH.text logo ]


buildNavigationLinks :: forall p i. String -> Array String -> NavigationLinks p i
buildNavigationLinks navMenuId linkLabels = NavigationLinks $ HH.ul
  [ HP.classes [ Class.hideOnMedAndDown, Class.left ] ]
  [ HH.ul_ (map (\label -> HH.li_ [HH.text label]) linkLabels) ]
