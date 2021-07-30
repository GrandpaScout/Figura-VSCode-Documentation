--================================================================================================--
--=====  CLASSES  ================================================================================--
--================================================================================================--

---An Item Stack.
---
---See `item_stack.createItem` for more info.
---@class ItemStack
---@field stack string
local ItemStack = {}

---Sets the NBT tag of an `ItemStack`.
---
---Note: NBT is in [SNBT format](https://minecraft.fandom.com/wiki/NBT_format#SNBT_format).
---@param snbt string
function ItemStack.setTag(snbt) end

---Returns a list of item tags that contain this item.  
---Item tags are assigned by datapacks.
---@param item string
---@return string[]
function ItemStack.getItemTags(item) end

---Returns the item's NBT tag as a Lua `table`, returns `nil` if there is no tag.  
---All keys are in lowercase.
---@return table|nil
function ItemStack.getTag() end

---Returns the amount of items in the stack.
---@return number
function ItemStack.getCount() end

---Returns if the item has an enchantment glint.
---@return boolean
function ItemStack.hasGlint() end

---Sets the damage value of the item.
---@param x number
function ItemStack.setDamage(x) end

---Returns the item's ID.
---@return string
function ItemStack.getType() end

---Returns the item's cooldown.
---@return number
function ItemStack.getCooldown() end

---Does nothing except cause a VM Error.
---@deprecated
function ItemStack.getItem() end

---Sets the amount of items in the stack.
---@param x number
function ItemStack.setCount(x) end

---Returns the damage value of the item.
---@return number
function ItemStack.getDamage() end


--================================================================================================--
--=====  FUNCTIONS  ==============================================================================--
--================================================================================================--

---Contains a function for creating `ItemStack`s.
item_stack = {}

---Creates an item stack.
---
---Note: NBT is in [SNBT format](https://minecraft.fandom.com/wiki/NBT_format#SNBT_format).
---@param item string
---@param snbt? string
---@return ItemStack
function item_stack.createItem(item, snbt) end
