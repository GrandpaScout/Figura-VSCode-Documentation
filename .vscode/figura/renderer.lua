--================================================================================================--
--=====  CLASSES  ================================================================================--
--================================================================================================--

---Transformation modes for rendering items.
---
---@alias RendererTransformationModes
---|"NONE" No transformations
---|"THIRD_PERSON_LEFT_HAND" Used when in 3rd person, left hand
---|"THIRD_PERSON_RIGHT_HAND" Used when in 3rd person, right hand
---|"FIRST_PERSON_LEFT_HAND" Used when in 1st person, left hand
---|"FIRST_PERSON_RIGHT_HAND" Used when in 1st person, right hand
---|"HEAD" Used when worn on the head
---|"GUI" Used on the GUI
---|"GROUND" Used on dropped items
---|"FIXED" Used on item frames


--================================================================================================--
--=====  FUNCTIONS  ==============================================================================--
--================================================================================================--

---Contains generic rendering functions to get and set shadow size and check if the viewer is in
---first person.
renderer = {}

---Returns the radius of the player's shadow.  
---Returns `nil` if the size has not been set by `.setShadowSize()`.
---@return number|nil
function renderer.getShadowSize() end

---Returns the lengh, in pixels, of a text/json
---@param text string
function renderer.getTextWidth(text) end

---Returns if the model is being viewed in first-person.  
---This will always return false for other clients since they cannot see your first-person model.
---@return boolean
function renderer.isFirstPerson() end

---Renders a block with the given parameters.
---@param blockstate string Same syntax as a vanilla blockstate
---@param modelPart BasicModelPart Parent part that this extra render gonna be attached to
---@param emissive boolean A boolean flag if its emissive or not
---@param pos Vector3
---@param rot? Vector3
---@param scale? Vector3
function renderer.renderBlock(blockstate, modelPart, emissive, pos, rot, scale) end

---Renders an item with the given parameters
---@param itemStack ItemStack Item stack table, from the item stack API
---@param modelPart BasicModelPart Parent part that this extra render gonna be attached to
---@param transformMode RendererTransformationModes Mode that the ItemStack gonna be rendered
---@param emissive boolean A boolean flag if its emissive or not
---@param pos Vector3
---@param rot? Vector3
---@param scale? Vector3
function renderer.renderItem(itemStack, modelPart, transformMode, emissive, pos, rot, scale) end

---Renders text with the given parameters
---@param text string JSON formatted (or legacy) string
---@param modelPart BasicModelPart Parent part that this extra render gonna be attached to
---@param emissive boolean A boolean flag if its emissive or not
---@param pos Vector3
---@param rot? Vector3
---@param scale? Vector3
function renderer.renderText(text, modelPart, emissive, pos, rot, scale) end

---Toggle the render of the entity youre riding
---@param boolean boolean
function renderer.setMountEnabled(boolean) end

---Toggle the shadow of the entity youre riding
---@param boolean boolean
function renderer.setMountShadowEnabled(boolean) end

---Sets the radius of the player's shadow.  
---Set the radius to `nil` to reset the shadow.
---@param radius number|nil
function renderer.setShadowSize(radius) end