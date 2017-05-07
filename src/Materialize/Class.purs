module Materialize.Class where

import Halogen.HTML (ClassName(..))

--------------------------------------------------------------------------------
-- Navbar
--------------------------------------------------------------------------------
navWrapper :: ClassName
navWrapper = ClassName "nav-wrapper"

brandLogo :: ClassName
brandLogo = ClassName "brand-logo"

hideOnMedAndDown :: ClassName
hideOnMedAndDown = ClassName "hide-on-med-and-down"


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

left :: ClassName
left = ClassName "left"

right :: ClassName
right = ClassName "right"

large :: ClassName
large = ClassName "large"
