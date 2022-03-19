--================================================================================================--
--=====  FUNCTIONS  ==============================================================================--
--================================================================================================--

---Contains functions involving saving and loading data to and from files.
---It uses the avatar name as file name
data = {}

---Save a value in the file.
---@param key string
---@param value any
function data.save(key, value) end

---Returns a LuaValue of the key, or nil if not found.
---@param key string
---@return any
function data.load(key) end

---Returns a LuaTable of all the saved variables.
---@return table
function data.loadall() end

---Removes the value from the file.
---@param key string
function data.remove(key) end

---Completely removes the file from existence.
function data.deleteFile() end