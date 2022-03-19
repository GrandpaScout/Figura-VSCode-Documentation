--================================================================================================--
--=====  CLASSES  ================================================================================--
--================================================================================================--

---A Minecraft biome identifier.
---
---Only the default Minecraft biomes are auto-completed.  
---You can use any biome from any mod, even if it does not auto-complete.
---@alias BiomeID
---| '"minecraft:ocean"' #Ocean
---| '"minecraft:deep_ocean"' #Deep Ocean
---| '"minecraft:frozen_ocean"' #Frozen Ocean
---| '"minecraft:deep_frozen_ocean"' #Deep Frozen Ocean
---| '"minecraft:cold_ocean"' #Cold Ocean
---| '"minecraft:deep_cold_ocean"' #Deep Cold Ocean
---| '"minecraft:lukewarm_ocean"' #Lukewarm Ocean
---| '"minecraft:deep_lukewarm_ocean"' #Deep Lukewarm Ocean
---| '"minecraft:warm_ocean"' #Warm Ocean
---| '"minecraft:deep_warm_ocean"' #Deep Warm Ocean
---| '"minecraft:river"' #River
---| '"minecraft:frozen_river"' #Frozen River
---| '"minecraft:beach"' #Beach
---| '"minecraft:stone_shore"' #Stone Shore
---| '"minecraft:snowy_beach"' #Snowy Beach
---| '"minecraft:forest"' #Forest
---| '"minecraft:wooded_hills"' #Wooded Hills
---| '"minecraft:flower_forest"' #Flower Forest
---| '"minecraft:birch_forest"' #Birch Forest
---| '"minecraft:birch_forest_hills"' #Birch Forest Hills
---| '"minecraft:tall_birch_forest"' #Tall Birch Forest
---| '"minecraft:tall_birch_hills"' #Tall Birch Hills
---| '"minecraft:dark_forest"' #Dark Forest
---| '"minecraft:dark_forest_hills"' #Dark Forest Hills
---| '"minecraft:jungle"' #Jungle
---| '"minecraft:jungle_hills"' #Jungle Hills
---| '"minecraft:modified_jungle"' #Modified Jungle
---| '"minecraft:jungle_edge"' #Jungle Edge
---| '"minecraft:modified_jungle_edge"' #Modified Jungle Edge
---| '"minecraft:bamboo_jungle"' #Bamboo Jungle
---| '"minecraft:bamboo_jungle_hills"' #Bamboo Jungle Hills
---| '"minecraft:taiga"' #Taiga
---| '"minecraft:taiga_hills"' #Taiga Hills
---| '"minecraft:taiga_mountains"' #Taiga Mountains
---| '"minecraft:snowy_taiga"' #Snowy Taiga
---| '"minecraft:snowy_taiga_hills"' #Snowy Taiga Hills
---| '"minecraft:snowy_taiga_mountains"' #Snowy Taiga Mountains
---| '"minecraft:giant_tree_taiga"' #Giant Tree Taiga
---| '"minecraft:giant_tree_taiga_hills"' #Giant Tree Taiga Hills
---| '"minecraft:giant_spruce_taiga"' #Giant Spruce Taiga
---| '"minecraft:giant_spruce_taiga_hills"' #Giant Spruce Taiga Hills
---| '"minecraft:mushroom_fields"' #Mushroom Fields
---| '"minecraft:mushroom_field_shore"' #Mushroom Field Shore
---| '"minecraft:swamp"' #Swamp
---| '"minecraft:swamp_hills"' #Swamp Hills
---| '"minecraft:savanna"' #Savanna
---| '"minecraft:savanna_plateau"' #Savanna Plateau
---| '"minecraft:shattered_savanna"' #Shattered Savanna
---| '"minecraft:shattered_savanna_plateau"' #Shattered Savanna Plateau
---| '"minecraft:plains"' #Plains
---| '"minecraft:sunflower_plains"' #Sunflower Plains
---| '"minecraft:desert"' #Desert
---| '"minecraft:desert_hills"' #Desert Hills
---| '"minecraft:desert_lakes"' #Desert Lakes
---| '"minecraft:snowy_tundra"' #Snowy Tundra
---| '"minecraft:snowy_mountains"' #Snowy Mountains
---| '"minecraft:ice_spikes"' #Ice Spikes
---| '"minecraft:mountains"' #Mountains
---| '"minecraft:wooded_mountains"' #Wooded Mountains
---| '"minecraft:gravelly_mountains"' #Gravelly Mountains
---| '"minecraft:modified_gravelly_mountains"' #Gravelly Mountains+
---| '"minecraft:mountain_edge"' #Mountain Edge
---| '"minecraft:badlands"' #Badlands
---| '"minecraft:badlands_plateau"' #Badlands Plateau
---| '"minecraft:modified_badlands_plateau"' #Modified Badlands Plateau
---| '"minecraft:wooded_badlands_plateau"' #Wooded Badlands Plateau
---| '"minecraft:modified_wooded_badlands_plateau"' #Modified Wooded Badlands Plateau
---| '"minecraft:eroded_badlands"' #Eroded Badlands
---| '"minecraft:dripstone_caves"' #Dripstone Caves
---| '"minecraft:lush_caves"' #Lush Caves
---| '"minecraft:nether_wastes"' #Nether Wastes
---| '"minecraft:crimson_forest"' #Crimson Forest
---| '"minecraft:warped_forest"' #Warped Forest
---| '"minecraft:soul_sand_valley"' #Soul Sand Valley
---| '"minecraft:basalt_deltas"' #Basalt Deltas
---| '"minecraft:the_end"' #The End
---| '"minecraft:small_end_islands"' #Small End Islands
---| '"minecraft:end_midlands"' #End Midlands
---| '"minecraft:end_highlands"' #End Highlands
---| '"minecraft:end_barrens"' #End Barrens
---| '"minecraft:the_void"' #The Void

---@alias BiomePrecipitationType
---| '"NONE"'
---| '"RAIN"'
---| '"SNOW"'

---A 4-bit int.
---@alias NibbleInt "0"|"1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9"|"10"|"11"|"12"|"13"|"14"|"15"

---A light level.
---@alias LightLevel NibbleInt

---A redstone power level.
---@alias RedstonePower NibbleInt

---A phase of the moon.
---@alias MoonPhase
---| "0" #Full Moon
---| "1" #Waning Gibbous
---| "2" #Third Quarter
---| "3" #Waning Crescent
---| "4" #New Moon
---| "5" #Waxing Crescent
---| "6" #First Quarter
---| "7" #Waxing Gibbous

---A Minecraft world.
---@class World
local World = {}

---Returns the biome identifier at the given block position.
---
---Note: Returns `"minecraft:plains"` if the block position is not loaded.
---@param pos VectorPos
---@return BiomeID string
function World.getBiomeID(pos) end

---Returns "NONE", "RAIN" or "SNOW", depending on the biome weather type.
---@param pos Vector3
---@return BiomePrecipitationType
function World.getBiomePrecipitation(pos) end

---Returns a float of the biome temperature.
---@param pos Vector3
---@return number
function World.getBiomeTemperature(pos) end

---Returns the block-light level at the given block position.
---
---Note: Returns `15` if the block position is not loaded.
---@param pos VectorPos
---@return LightLevel number
function World.getBlockLightLevel(pos) end

---Returns the block state at the given block position.
---
---Note: Always returns a valid block state, even if the block position is unloaded.
---@param pos VectorPos
---@return BlockState
function World.getBlockState(pos) end

---Returns the block tags containing the block at the given block position.
---
---Note: Returns the block tags for `"minecraft:void_air"` if the block position is unloaded.
---@param pos VectorPos
---@return string[]
function World.getBlockTags(pos) end

---Returns all other players on the server using Figura.
---@return Player[]
function World.getFiguraPlayers() end

---Returns the combined light level at the given block position.
---
---Note: Returns `15` if the block position is not loaded.
---@param pos VectorPos
---@return LightLevel number
function World.getLightLevel(pos) end

---See `.getTimeOfDay`.
---@deprecated
---@return number
function World.getLunarTime() end

---Returns the current moon phase.
---@return MoonPhase number
function World.getMoonPhase() end

---Returns how heavy rain is falling in this world.  
---`0` is no rain, `1` is full rain.
---@param delta number
---@return number
function World.getRainGradient(delta) end

---Returns the redstone power the given block position is receiving.  
---This does *not* return the redstone power the block is sending.
---
---Note: Returns `0` if the block position is not loaded.
---@return RedstonePower number
function World.getRedstonePower() end

---Returns the sky-light level of the given block position.
---
---Note: Returns `15` if the block position is not loaded.
---@return LightLevel number
function World.getSkyLightLevel() end

---Returns the strong redstone power of the block position is receiving.  
---This does *not* return the redstone power the block is sending.  
---This *only* checks for direct connections, redstone power sent through non-redstone blocks are
---ignored.
---@return RedstonePower number
function World.getStrongRedstonePower() end

---Returns the total amount of ticks the server has run for.
---@return number
function World.getTime() end

---Returns the total amount of ticks that have passed since the start of day 0.  
---This will not always sync up with `getTime` if the world's time is modified.
---@return number
function World.getTimeOfDay() end

---Returns if the current weather is thunder.
---@return boolean
function World.isLightning() end

---Returns if the given position has sky access.
---@param pos Vector3
---@return boolean
function World.isOpenSky(pos) end

--================================================================================================--
--=====  FUNCTIONS  ==============================================================================--
--================================================================================================--

---The world that this script is running in currently.
---@type World
world = {}
