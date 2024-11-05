extends Node

enum ToolType { HATCHET, PICKAXE, FISHING_ROD }
enum ResourceType { WOOD, STONE, GEM, FISH }

enum ResourceName {
	SPRUCE, PINE, WILLOW, ELM, OAK, ASH, MAPLE, YEW, DRAGON, ELDER,
	LIMESTONE, SANDSTONE, FLINT, SHALE, SLATE, BASALT, GRANITE, MARBLE, OBSIDIAN, ONYX,
	OPAL, TOPAZ, SAPPHIRE, EMERALD, RUBY, DIAMOND,
	SARDINE, PERCH, CARP, TROUT, CATFISH, SALMON, PIKE, SWORDFISH, BLUEFIN, SHARK
}

var ResourceMeta = {
	# wood resources
	ResourceName.SPRUCE: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Spruce Wood",
		"respawn_time": 5,
		"resource_amount": 20,
		"tool_level": 1,
		"default_animation": "spruce_default",
		"partial_animation": "spruce_partial",
		"depleted_animation": "spruce_depleted"
	},
	ResourceName.PINE: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Pine Wood",
		"respawn_time": 6,
		"resource_amount": 25,
		"tool_level": 10,
		"default_animation": "pine_default",
		"partial_animation": "pine_partial",
		"depleted_animation": "pine_depleted"
	},
	ResourceName.WILLOW: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Willow Wood",
		"respawn_time": 8,
		"resource_amount": 30,
		"tool_level": 20,
		"default_animation": "willow_default",
		"partial_animation": "willow_partial",
		"depleted_animation": "willow_depleted"
	},
	ResourceName.ELM: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Elm Wood",
		"respawn_time": 10,
		"resource_amount": 35,
		"tool_level": 30,
		"default_animation": "elm_default",
		"partial_animation": "elm_partial",
		"depleted_animation": "elm_depleted"
	},
	ResourceName.OAK: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Oak Wood",
		"respawn_time": 12,
		"resource_amount": 40,
		"tool_level": 40,
		"default_animation": "oak_default",
		"partial_animation": "oak_partial",
		"depleted_animation": "oak_depleted"
	},
	ResourceName.ASH: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Ash Wood",
		"respawn_time": 14,
		"resource_amount": 45,
		"tool_level": 50,
		"default_animation": "ash_default",
		"partial_animation": "ash_partial",
		"depleted_animation": "ash_depleted"
	},
	ResourceName.MAPLE: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Maple Wood",
		"respawn_time": 16,
		"resource_amount": 50,
		"tool_level": 60,
		"default_animation": "maple_default",
		"partial_animation": "maple_partial",
		"depleted_animation": "maple_depleted"
	},
	ResourceName.YEW: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Yew Wood",
		"respawn_time": 18,
		"resource_amount": 55,
		"tool_level": 70,
		"default_animation": "yew_default",
		"partial_animation": "yew_partial",
		"depleted_animation": "yew_depleted"
	},
	ResourceName.DRAGON: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Dragon Wood",
		"respawn_time": 20,
		"resource_amount": 60,
		"tool_level": 80,
		"default_animation": "dragon_default",
		"partial_animation": "dragon_partial",
		"depleted_animation": "dragon_depleted"
	},
	ResourceName.ELDER: {
		"tool_type": ToolType.HATCHET,
		"resource_type": ResourceType.WOOD,
		"resource_name": "Elder Wood",
		"respawn_time": 25,
		"resource_amount": 70,
		"tool_level": 90,
		"default_animation": "elder_default",
		"partial_animation": "elder_partial",
		"depleted_animation": "elder_depleted"
	},

	# stone resources
	ResourceName.LIMESTONE: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Limestone",
		"respawn_time": 5,
		"resource_amount": 20,
		"tool_level": 1,
		"default_animation": "limestone_default",
		"partial_animation": "limestone_partial",
		"depleted_animation": "limestone_depleted"
	},
	ResourceName.SANDSTONE: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Sandstone",
		"respawn_time": 6,
		"resource_amount": 25,
		"tool_level": 10,
		"default_animation": "sandstone_default",
		"partial_animation": "sandstone_partial",
		"depleted_animation": "sandstone_depleted"
	},
	ResourceName.FLINT: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Flint",
		"respawn_time": 8,
		"resource_amount": 30,
		"tool_level": 20,
		"default_animation": "flint_default",
		"partial_animation": "flint_partial",
		"depleted_animation": "flint_depleted"
	},
	ResourceName.SHALE: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Shale",
		"respawn_time": 10,
		"resource_amount": 35,
		"tool_level": 30,
		"default_animation": "shale_default",
		"partial_animation": "shale_partial",
		"depleted_animation": "shale_depleted"
	},
	ResourceName.SLATE: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Slate",
		"respawn_time": 12,
		"resource_amount": 40,
		"tool_level": 40,
		"default_animation": "slate_default",
		"partial_animation": "slate_partial",
		"depleted_animation": "slate_depleted"
	},
	ResourceName.BASALT: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Basalt",
		"respawn_time": 14,
		"resource_amount": 45,
		"tool_level": 50,
		"default_animation": "basalt_default",
		"partial_animation": "basalt_partial",
		"depleted_animation": "basalt_depleted"
	},
	ResourceName.GRANITE: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Granite",
		"respawn_time": 16,
		"resource_amount": 50,
		"tool_level": 60,
		"default_animation": "granite_default",
		"partial_animation": "granite_partial",
		"depleted_animation": "granite_depleted"
	},
	ResourceName.MARBLE: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Marble",
		"respawn_time": 18,
		"resource_amount": 55,
		"tool_level": 70,
		"default_animation": "marble_default",
		"partial_animation": "marble_partial",
		"depleted_animation": "marble_depleted"
	},
	ResourceName.OBSIDIAN: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Obsidian",
		"respawn_time": 20,
		"resource_amount": 60,
		"tool_level": 80,
		"default_animation": "obsidian_default",
		"partial_animation": "obsidian_partial",
		"depleted_animation": "obsidian_depleted"
	},
	ResourceName.ONYX: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.STONE,
		"resource_name": "Onyx",
		"respawn_time": 25,
		"resource_amount": 70,
		"tool_level": 90,
		"default_animation": "onyx_default",
		"partial_animation": "onyx_partial",
		"depleted_animation": "onyx_depleted"
	},

	# gem resources
	ResourceName.OPAL: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.GEM,
		"resource_name": "Opal",
		"respawn_time": 5,
		"resource_amount": 10,
		"tool_level": 1,
		"default_animation": "opal_default",
		"partial_animation": "opal_partial",
		"depleted_animation": "opal_depleted"
	},
	ResourceName.SAPPHIRE: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.GEM,
		"resource_name": "Sapphire",
		"respawn_time": 10,
		"resource_amount": 15,
		"tool_level": 20,
		"default_animation": "sapphire_default",
		"partial_animation": "sapphire_partial",
		"depleted_animation": "sapphire_depleted"
	},
	ResourceName.EMERALD: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.GEM,
		"resource_name": "Emerald",
		"respawn_time": 15,
		"resource_amount": 20,
		"tool_level": 40,
		"default_animation": "emerald_default",
		"partial_animation": "emerald_partial",
		"depleted_animation": "emerald_depleted"
	},
	ResourceName.RUBY: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.GEM,
		"resource_name": "Ruby",
		"respawn_time": 20,
		"resource_amount": 25,
		"tool_level": 60,
		"default_animation": "ruby_default",
		"partial_animation": "ruby_partial",
		"depleted_animation": "ruby_depleted"
	},
	ResourceName.DIAMOND: {
		"tool_type": ToolType.PICKAXE,
		"resource_type": ResourceType.GEM,
		"resource_name": "Diamond",
		"respawn_time": 25,
		"resource_amount": 30,
		"tool_level": 80,
		"default_animation": "diamond_default",
		"partial_animation": "diamond_partial",
		"depleted_animation": "diamond_depleted"
	},

	# fish resources
	ResourceName.SARDINE: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Sardine",
		"respawn_time": 3,
		"resource_amount": 10,
		"tool_level": 10,
		"default_animation": "sardine_default",
		"partial_animation": "sardine_partial",
		"depleted_animation": "sardine_depleted"
	},
	ResourceName.PERCH: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Perch",
		"respawn_time": 4,
		"resource_amount": 15,
		"tool_level": 20,
		"default_animation": "perch_default",
		"partial_animation": "perch_partial",
		"depleted_animation": "perch_depleted"
	},
	ResourceName.CARP: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Carp",
		"respawn_time": 5,
		"resource_amount": 20,
		"tool_level": 30,
		"default_animation": "carp_default",
		"partial_animation": "carp_partial",
		"depleted_animation": "carp_depleted"
	},
	ResourceName.TROUT: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Trout",
		"respawn_time": 6,
		"resource_amount": 25,
		"tool_level": 40,
		"default_animation": "trout_default",
		"partial_animation": "trout_partial",
		"depleted_animation": "trout_depleted"
	},
	ResourceName.CATFISH: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Catfish",
		"respawn_time": 7,
		"resource_amount": 30,
		"tool_level": 50,
		"default_animation": "catfish_default",
		"partial_animation": "catfish_partial",
		"depleted_animation": "catfish_depleted"
	},
	ResourceName.SALMON: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Salmon",
		"respawn_time": 8,
		"resource_amount": 35,
		"tool_level": 60,
		"default_animation": "salmon_default",
		"partial_animation": "salmon_partial",
		"depleted_animation": "salmon_depleted"
	},
	ResourceName.PIKE: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Pike",
		"respawn_time": 10,
		"resource_amount": 40,
		"tool_level": 70,
		"default_animation": "pike_default",
		"partial_animation": "pike_partial",
		"depleted_animation": "pike_depleted"
	},
	ResourceName.SWORDFISH: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Swordfish",
		"respawn_time": 12,
		"resource_amount": 45,
		"tool_level": 80,
		"default_animation": "swordfish_default",
		"partial_animation": "swordfish_partial",
		"depleted_animation": "swordfish_depleted"
	},
	ResourceName.BLUEFIN: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Bluefin Tuna",
		"respawn_time": 15,
		"resource_amount": 50,
		"tool_level": 90,
		"default_animation": "bluefin_default",
		"partial_animation": "bluefin_partial",
		"depleted_animation": "bluefin_depleted"
	},
	ResourceName.SHARK: {
		"tool_type": ToolType.FISHING_ROD,
		"resource_type": ResourceType.FISH,
		"resource_name": "Shark",
		"respawn_time": 20,
		"resource_amount": 60,
		"tool_level": 100,
		"default_animation": "shark_default",
		"partial_animation": "shark_partial",
		"depleted_animation": "shark_depleted"
	}
}
