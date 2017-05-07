module Materialize.Button where

import Data.Array ((:))
import Data.Maybe (Maybe, maybe)
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

import Materialize.Class as Class
import Materialize.Icon

-- | Create a button with the given label, class names and optional icon.
button :: forall p i. String
           -> Array HH.ClassName
           -> Maybe (Icon p i)
           -> HH.HTML p i
button label classes maybeIcon = let tags = [HH.text label] in
  HH.a
    [ HP.classes (Class.btn : classes) ]
    (maybe tags (\(Icon icon) -> icon : tags) maybeIcon)
