--================================================================================================--
--=====  FUNCTIONS  ==============================================================================--
--================================================================================================--

---Contains functions involving saving and loading data to and from files.
---It uses the avatar name as file name
data = {}

---Completely removes the file from existence.
function data.deleteFile() end

---Gets the name of the file you are currently saving to.
---@return string
function getName() end

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

---Save a value in the file.
---@param key string
---@param value any
function data.save(key, value) end

---Change the file you are currently saving to.
---@param name string
function setName(name) end
