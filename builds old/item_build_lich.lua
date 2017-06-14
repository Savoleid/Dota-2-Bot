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
				"item_cloak",
				"item_shadow_amulet",
				"item_point_booster",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_blade_of_alacrity",
				"item_ogre_axe",
				"item_boots_of_elves",
				"item_boots_of_elves",
				"item_recipe_hurricane_pike",
				"item_void_stone",
				"item_ultimate_orb",
				"item_mystic_staff"
			};

-- Set up Skill build
local SKILL_Q = "lich_frost_nova";
local SKILL_W = "lich_frost_armor";
local SKILL_E = "lich_dark_ritual";
local SKILL_R = "lich_chain_frost";    


local ABILITY1 = "special_bonus_movement_speed_15"
local ABILITY2 = "special_bonus_hp_125"
local ABILITY3 = "special_bonus_unique_lich_3"
local ABILITY4 = "special_bonus_cast_range_125"
local ABILITY5 = "special_bonus_gold_income_20"
local ABILITY6 = "special_bonus_attack_damage_150"
local ABILITY7 = "special_bonus_unique_lich_2"
local ABILITY8 = "special_bonus_unique_lich_1"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_E,    SKILL_Q,    SKILL_E,    SKILL_Q,    SKILL_Q,
    SKILL_R,    SKILL_E,    SKILL_E,    SKILL_Q,    talents[1],
    SKILL_W,    SKILL_R,    SKILL_W,    SKILL_W,    talents[4],
    SKILL_W,    "-1",       SKILL_R,    "-1",   	talents[5],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};

return X