data:extend(
    {
        {
            type = "technology",
            name = "automation-4",
            icon = "__base__/graphics/technology/automation-3.png",
            icon_size = 256, icon_mipmaps = 4,
            prerequisites = {
                "automation-3",
                "advanced-electronics"
            },
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "assembling-machine-4"
                }
            },
            unit =
            {
                count = 200,
                time = 75,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1}
                }
            },
            order = "a-b-c"
        }
    }
)