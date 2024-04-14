local EntityCondition = {}
local Storage = require "src.Storage"
local Util = require "src.Util"

EntityCondition.OPERATIONS = { "≥", "≤" }

function EntityCondition.get_selected_storage(entity, condition, storage)
  if not condition or not condition.surface or condition.surface == entity.surface.name then
    return storage
  end
  local surface = game.surfaces[condition.surface]
  if not surface then
    return
  end
  return Storage.get_storage_for_surface(surface.index, entity)
end

-- TODO: draw paused indicator
function EntityCondition.evaluate(entity, condition, storage)
  if not condition or not condition.item then
    return true
  end

  storage = EntityCondition.get_selected_storage(entity, condition)
  if not storage then
    return false
  end

  local storage_key = condition.item
  local amount_stored = storage.items[storage_key] or 0
  if type(amount_stored) == "table" then
    amount_stored = Util.table_min_val(amount_stored)
  end
  local limit = Storage.get_item_limit(storage, storage_key) or 1
  local percent_stored = amount_stored / limit * 100
  local op = condition.op or 1
  local value = condition.value or 0
  if op == 1 and percent_stored >= value then
    return true
  elseif op == 2 and percent_stored <= value then
    return true
  end
  return false
end

return EntityCondition
