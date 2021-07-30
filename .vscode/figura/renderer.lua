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

---Returns if this client is in first person view.
---@return boolean
function renderer.isFirstPerson() end

---Sets the radius of the player's shadow.  
---Set the radius to `nil` to reset the shadow.
---@param radius number|nil
function renderer.setShadowSize(radius) end
