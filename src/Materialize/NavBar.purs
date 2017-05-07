module Materialize.Navbar where

import Prelude (($))
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
    [HP.class_ Class.navWrapper]
    [ logoHtml
    , linksHtml
    ]

  logoHtml :: HH.HTML p i
  logoHtml = HH.a [HP.class_ Class.brandLogo] [HH.text logo]
