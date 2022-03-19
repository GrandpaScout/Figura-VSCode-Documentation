--================================================================================================--
--=====  CLASSES  ================================================================================--
--================================================================================================--

---@alias RaycastShapeHandling
---|'"COLLIDER"'
---|'"OUTLINE"'
---|'"VISUAL"'

---@alias RaycastFluidHandling
---|'"NONE"'
---|'"SOURCE_ONLY"'
---|'"ANY"'

---@class RaycastBlockResult
---@field state BlockState
---@field pos VectorPos

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

---Returns the camera position of the player executing the script.
---@return VectorPos
function renderer.getCameraPos() end

---Returns if fire can be rendered on the avatar
---@return boolean
function renderer.getRenderFire() end

---Returns the radius of the player's shadow.  
---Returns `nil` if the size has not been set by `.setShadowSize()`.
---@return number|nil
function renderer.getShadowSize() end

---Returns the lengh, in pixels, of a text/json
---@param text string
function renderer.getTextWidth(text) end

---Returns if the camera is in front of or behind the player
---@return boolean
function renderer.isCameraBackwards() end

---Returns if the model is being viewed in first-person.  
---This will always return false for other clients since they cannot see your first-person model.
---@return boolean
function renderer.isFirstPerson() end

---Casts a ray from startPos to endPos, looking at the blocks on the way.
---If the ray never hits anything, then the function returns nil.
---@param startPos VectorPos
---@param endPos VectorPos
---@param shapeHandling RaycastShapeHandling
---@param fluidHandling RaycastFluidHandling
---@param predicate? fun(blockState:BlockState|string,pos:VectorPos):boolean
---@return RaycastBlockResult
function renderer.raycastBlocks(startPos, endPos, shapeHandling, fluidHandling, predicate) end

---Casts a ray from startPos to endPos, returning the first entity it sees on the way.
---If the ray never hits anything, then the function returns nil.
---@param startPos VectorPos
---@param endPos VectorPos
---@param predicate? fun(entity:Entity|LivingEntity|Player):boolean
---@return Entity|LivingEntity|Player
function renderer.raycastEntities(startPos, endPos, predicate) end

---Renders a block with the given parameters.
---@param blockstate BlockState|string Block State table or a valid block ID+NBT
---@param modelPart BasicModelPart Parent part that this extra render gonna be attached to
---@param emissive boolean A boolean flag if its emissive or not
---@param pos Vector3
---@param rot? Vector3
---@param scale? Vector3
---@param renderLayer? string
function renderer.renderBlock(blockstate, modelPart, emissive, pos, rot, scale,renderLayer) end

---Renders an item with the given parameters
---@param itemStack ItemStack|string Item stack table, from the item stack API, or a valid item ID+NBT
---@param modelPart BasicModelPart Parent part that this extra render gonna be attached to
---@param transformMode RendererTransformationModes Mode that the ItemStack gonna be rendered
---@param emissive boolean A boolean flag if its emissive or not
---@param pos Vector3
---@param rot? Vector3
---@param scale? Vector3
---@param renderLayer? string
function renderer.renderItem(itemStack, modelPart, transformMode, emissive, pos, rot, scale,renderLayer) end

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

---Toggle the rendering of fire on your avatar
---@param boolean boolean
function renderer.setRenderFire(boolean) end

---Sets the radius of the player's shadow.  
---Set the radius to `nil` to reset the shadow.
---@param radius number|nil
function renderer.setShadowSize(radius) end

---"Custom shader stuff"
---Sorry thats all I have
---@param layer string
---@param uniform string
---@param value number|table
function setUniform(layer, uniform, value) end
