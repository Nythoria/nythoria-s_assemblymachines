data:extend(
    {
        {
            type = "assembling-machine",
            name = "assembling-machine-4",
            icon = "__base__/graphics/icons/assembling-machine-3.png",
            icon_size = 64,
            icon_mipmaps = 4,
            flags = {"placeable-neutral","placeable-player", "player-creation"},
            minable = {mining_time = 0.2, result = "assembling-machine-4"},
            max_health = 400,
            corpse = "big-remnants",
            dying_explosion = "medium-explosion",
            resistances = {
                {
                    type = "fire",
                    percent = 70
                }
            },
            fluid_boxes = {
                {
                    production_type = "input",
                    pipe_picture = assembler2pipepictures(),
                    pipe_covers = pipecoverspictures(),
                    base_area = 10,
                    base_level = -1,
                    pipe_connections = {{ type="input", position = {0, -2} }}
                },
                {
                    production_type = "output",
                    pipe_picture = assembler2pipepictures(),
                    pipe_covers = pipecoverspictures(),
                    base_area = 10,
                    base_level = 1,
                    pipe_connections = {{ type="output", position = {0, 2} }}
                },
                off_when_no_fluid_recipe = true
            },
            collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            fast_replaceable_group = "assembling-machine",
            animation = {
                filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
                priority = "high",
                width = 108,
                height = 119,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(0, -0.5)
            },
            open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
            close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
            working_sound = {
                sound = {
                    {
                        filename = "__base__/sound/assembling-machine-t2-1.ogg",
                        volume = 0.8
                    },
                    {
                        filename = "__base__/sound/assembling-machine-t2-2.ogg",
                        volume = 0.8
                    }
                },
                idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
                apparent_volume = 1.5
            },
            crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid"},
            crafting_speed = 1.5,
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                emissions_per_minute = 2
            },
            energy_usage = "375kW",
            module_specification = {
                module_slots = 4
            },
            allowed_effects = {"consumption", "speed", "productivity", "pollution"}
        }
    }
)

data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 1