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
---@return {state:BlockState, pos:VectorPos}
function renderer.raycastBlocks(startPos, endPos, shapeHandling, fluidHandling, predicate) end

---Casts a ray from startPos to endPos, returning the first entity it sees on the way.
---If the ray never hits anything, then the function returns nil.
---@param startPos VectorPos
---@param endPos VectorPos
---@param predicate? fun(entity:Entity|LivingEntity|Player):boolean
---@return {entity:Entity|LivingEntity|Player, pos:VectorPos}
function renderer.raycastEntities(startPos, endPos, predicate) end

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
function renderer.setUniform(layer, uniform, value) end
