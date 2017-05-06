module Button where

import Data.Array ((:))
import Data.Maybe (Maybe, maybe)
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Create a button with the given label, class names and optional icon.
iconButton :: forall p i. String
           -> Array HH.ClassName
           -> Maybe (HH.HTML p i)
           -> HH.HTML p i
iconButton label classes maybeIcon = let tags = [HH.text label] in
  HH.a [ HP.classes classes ] (maybe tags (\icon -> icon : tags) maybeIcon)
