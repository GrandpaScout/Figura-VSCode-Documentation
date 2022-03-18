--================================================================================================--
--=====  FUNCTIONS  ==============================================================================--
--================================================================================================--

---Contains functions relating to sounds.
sound = {}

---Returns a list of all sounds the player can hear.
---@return string[]
function sound.getSounds() end

---`pos: VectorPos`  
---&emsp;Three numbers that represent a position in the world.
---
---`vol: number[]`  
---&emsp;Two numbers that represent the volume and pitch of the sound.
---***
---Plays a sound event for this client.  
---Sounds are played on the `player` channel.
---
---Note: This function does not support vector `vol`s.
---@param name string
---@param pos VectorPos
---@param vol number[]
function sound.playSound(name, pos, vol) end
