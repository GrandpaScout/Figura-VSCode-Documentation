--================================================================================================--
--=====  FUNCTIONS  ==============================================================================--
--================================================================================================--

---Contains functions relating to sounds.
sound = {}

---Returns a list of all sounds the player can hear.
---@return string[]
function sound.getSounds() end

---Plays a sound event for this client.
---
---The first three values of `pos_vol` are used as the block position.  
---The fourth value is a number `0..2` that sets volume.  
---The fifth value is a number `0.5..2` that sets pitch.
---@param name string
---@param pos_vol Vector5
function sound.playSound(name, pos_vol) end
