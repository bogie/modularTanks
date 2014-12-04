data:extend({
  {
      type = "technology",
      name = "modularTanks",
      icon = "__modularTanks__/graphics/modular_tank.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "modularTank"
        }
      },
      prerequisites = {"tanks", "power-armor"},
      unit =
      {
        count = 100,
        ingredients =
        {
          {"science-pack-1", 2},
          {"science-pack-2", 1},
          {"science-pack-3", 1}
        },
        time = 20
      }
  }
})