module Icon where

import Prelude (($))
import Data.Array ((:))
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

import Class as Class

newtype Icon p i = Icon (HH.HTML p i)

-- | A "cloud" icon.
cloudIcon :: forall p i. Array HH.ClassName -> Icon p i
cloudIcon extraClasses = customIcon "cloud" extraClasses

-- | Construct an icon from the given icon name.
customIcon :: forall p i. String -> Array HH.ClassName-> Icon p i
customIcon iconName classes = Icon $ HH.i
  [ HP.classes (Class.materialIcons : classes) ]
  [ HH.text iconName ]
