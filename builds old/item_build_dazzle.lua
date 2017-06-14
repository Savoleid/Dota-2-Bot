X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
--[[ warning if meepo does not have an item other than 
brown boots / power treads at any time he will think he 
is a clone and skill/item decisions will break! ]]
X["items"] = {
				"item_magic_stick",
				"item_boots",
				"item_circlet",
				"item_ring_of_protection",
				"item_recipe_urn_of_shadows",
				"item_infused_raindrop",
				"item_energy_booster",
				"item_ring_of_regen",
				"item_recipe_headdress",
				"item_branches",
				"item_chainmail",
				"item_recipe_buckler",
				"item_branches",
				"item_recipe_mekansm",
				"item_recipe_guardian_greaves",
				"item_staff_of_wizardry",
				"item_ring_of_health",
				"item_recipe_force_staff",
				"item_point_booster",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_blade_of_alacrity",
				"item_wind_lace",
				"item_staff_of_wizardry",
				"item_void_stone",
				"item_recipe_cyclone",
				"item_void_stone",
				"item_ultimate_orb",
				"item_mystic_staff"
			};

-- Set up Skill build
local SKILL_Q = "dazzle_poison_touch";
local SKILL_W = "dazzle_shallow_grave";
local SKILL_E = "dazzle_shadow_wave";
local SKILL_R = "dazzle_weave";    


local ABILITY1 = "special_bonus_hp_125"
local ABILITY2 = "special_bonus_intelligence_10"
local ABILITY3 = "special_bonus_attack_damage_60"
local ABILITY4 = "special_bonus_cast_range_100"
local ABILITY5 = "special_bonus_respawn_reduction_30"
local ABILITY6 = "special_bonus_movement_speed_25"
local ABILITY7 = "special_bonus_unique_dazzle_2"
local ABILITY8 = "special_bonus_unique_dazzle_1"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_E,    SKILL_W,    SKILL_Q,    SKILL_E,    SKILL_E,
    SKILL_R,    SKILL_E,    SKILL_W,    SKILL_W,    talents[2],
    SKILL_W,    SKILL_R,    SKILL_Q,    SKILL_Q,    talents[3],
    SKILL_Q,    "-1",       SKILL_R,    "-1",   	talents[6],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};

return X