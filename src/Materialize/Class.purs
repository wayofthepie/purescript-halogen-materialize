module Materialize.Class where

import Halogen.HTML (ClassName(..))

--------------------------------------------------------------------------------
-- Buttons
--------------------------------------------------------------------------------
btn :: ClassName
btn = ClassName "btn"

btnFloating :: ClassName
btnFloating = ClassName "btn-floating"

btnLarge :: ClassName
btnLarge = ClassName "btn-large"

fixedActionButton :: ClassName
fixedActionButton = ClassName "fixed-action-btn"

horizontal :: ClassName
horizontal = ClassName "horizontal"


--------------------------------------------------------------------------------
-- Icons
--------------------------------------------------------------------------------
materialIcons :: ClassName
materialIcons = ClassName "material-icons"

left :: ClassName
left = ClassName "left"

right :: ClassName
right = ClassName "right"

large :: ClassName
large = ClassName "large"


--------------------------------------------------------------------------------
-- Animation
--------------------------------------------------------------------------------
wavesEffect :: ClassName
wavesEffect = ClassName "waves-effect"

wavesLight  :: ClassName
wavesLight = ClassName "waves-light"

--------------------------------------------------------------------------------
-- Other
--------------------------------------------------------------------------------
disabled :: ClassName
disabled = ClassName "disabled"
