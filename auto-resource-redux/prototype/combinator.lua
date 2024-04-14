-- Combinator to read storage as signals
local combinator = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
combinator.minable.result = "arr-combinator"
combinator.name = "arr-combinator"
combinator.corpse = "arr-combinator-remnants"
combinator.item_slot_count = 2500
combinator.icon = "__auto-resource-redux__/graphics/arr-combinator-icon.png"
combinator.sprites = {
  east = {
    layers = {
      {
        filename = "__auto-resource-redux__/graphics/arr-combinator.png",
        frame_count = 1,
        height = 102,
        priority = "high",
        scale = 0.5,
        shift = {
          0,
          0.15625
        },
        width = 114,
        x = 114,
        y = 0
      },
      {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/combinator/hr-constant-combinator-shadow.png",
        frame_count = 1,
        height = 66,
        priority = "high",
        scale = 0.5,
        shift = {
          0.265625,
          0.171875
        },
        width = 98,
        x = 98,
        y = 0
      }
    }
  },
  north = {
    layers = {
      {
        filename = "__auto-resource-redux__/graphics/arr-combinator.png",
        frame_count = 1,
        height = 102,
        priority = "high",
        scale = 0.5,
        width = 114,
        x = 0,
        y = 0
      },
      {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/combinator/hr-constant-combinator-shadow.png",
        frame_count = 1,
        height = 66,
        priority = "high",
        scale = 0.5,
        width = 98,
        x = 0,
        y = 0
      }
    }
  },
  south = {
    layers = {
      {
        filename = "__auto-resource-redux__/graphics/arr-combinator.png",
        frame_count = 1,
        height = 102,
        priority = "high",
        scale = 0.5,
        width = 114,
        x = 228,
        y = 0
      },
      {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/combinator/hr-constant-combinator-shadow.png",
        frame_count = 1,
        height = 66,
        priority = "high",
        scale = 0.5,
        width = 98,
        x = 196,
        y = 0
      }
    }
  },
  west = {
    layers = {
      {
        filename = "__auto-resource-redux__/graphics/arr-combinator.png",
        frame_count = 1,
        height = 102,
        priority = "high",
        scale = 0.5,
        width = 114,
        x = 342,
        y = 0
      },
      {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/combinator/hr-constant-combinator-shadow.png",
        frame_count = 1,
        height = 66,
        priority = "high",
        scale = 0.5,
        width = 98,
        x = 294,
        y = 0
      }
    }
  }
}

local remnants = table.deepcopy(data.raw["corpse"]["constant-combinator-remnants"])
remnants.name = "arr-combinator-remnants"
remnants.animation = {
  {
    axially_symmetrical = false,
    direction_count = 4,
    filename = "__auto-resource-redux__/graphics/arr-combinator-remnants.png",
    frame_count = 1,
    height = 112,
    line_length = 1,
    scale = 0.5,
    shift = {
      0,
      0
    },
    variation_count = 1,
    width = 118,
    y = 0
  }
}

local item = {
  icon = "__auto-resource-redux__/graphics/arr-combinator-icon.png",
  icon_size = 64,
  name = "arr-combinator",
  order = "c[combinators]-d[arr-combinator]",
  place_result = "arr-combinator",
  stack_size = 50,
  subgroup = "circuit-network",
  type = "item"
}

local recipe = {
  enabled = true,
  ingredients = {
    { type = "item", name = "copper-cable",       amount = 5 },
    { type = "item", name = "electronic-circuit", amount = 2 },
  },
  name = "arr-combinator",
  result = "arr-combinator",
  type = "recipe"
}

data:extend({
  combinator,
  remnants,
  item,
  recipe
})
