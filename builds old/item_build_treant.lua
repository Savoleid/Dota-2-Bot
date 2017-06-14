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
				"item_energy_booster",
				"item_branches",
				"item_ring_of_regen",
				"item_recipe_headdress",
				"item_branches",
				"item_chainmail",
				"item_recipe_buckler",
				"item_recipe_mekansm",
				"item_recipe_guardian_greaves",
				"item_staff_of_wizardry",
				"item_ring_of_health",
				"item_recipe_force_staff",
				"item_cloak",
				"item_shadow_amulet",
				"item_cloak",
				"item_ring_of_health",
				"item_ring_of_regen",
				"item_ring_of_regen",
				"item_branches",
				"item_recipe_headdress",
				"item_recipe_pipe",
				"item_ring_of_health",
				"item_void_stone",
				"item_platemail",
				"item_energy_booster",
				"item_blink"
			};

-- Set up Skill build
local SKILL_Q = "treant_natures_guise";
local SKILL_W = "treant_leech_seed";
local SKILL_E = "treant_living_armor";
local SKILL_R = "treant_overgrowth";    

local ABILITY1 = "special_bonus_mp_regen_2"
local ABILITY2 = "special_bonus_attack_speed_30"
local ABILITY3 = "special_bonus_movement_speed_25"
local ABILITY4 = "special_bonus_gold_income_15"
local ABILITY5 = "special_bonus_attack_damage_90"
local ABILITY6 = "special_bonus_cooldown_reduction_15"
local ABILITY7 = "special_bonus_unique_treant"
local ABILITY8 = "special_bonus_respawn_reduction_50"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_W,    SKILL_E,    SKILL_W,    SKILL_E,    SKILL_Q,
    SKILL_R,    SKILL_W,    SKILL_E,    SKILL_W,    talents[2],
    SKILL_E,    SKILL_R,    SKILL_Q,    SKILL_Q,    talents[3],
    SKILL_Q,    "-1",       SKILL_R,    "-1",   	talents[5],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};

return X