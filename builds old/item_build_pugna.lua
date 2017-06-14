X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
--[[ warning if meepo does not have an item other than 
brown boots / power treads at any time he will think he 
is a clone and skill/item decisions will break! ]]
X["items"] = {
				"item_magic_stick",
				"item_circlet",
				"item_mantle",
				"item_recipe_null_talisman",
				"item_boots",
				"item_energy_booster",
				"item_ring_of_regen",
				"item_recipe_headdress",
				"item_branches",
				"item_chainmail",
				"item_recipe_buckler",
				"item_branches",
				"item_recipe_mekansm",
				"item_recipe_guardian_greaves"
				"item_ring_of_health", -- force staff
				"item_staff_of_wizardry",-- force staff
				"item_recipe_force_staff", -- force staff
				"item_point_booster",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_blade_of_alacrity",
				"item_staff_of_wizardry",
				"item_cloak",
				"item_shadow_amulet",
				"item_recipe_dagon",
				"item_recipe_dagon",
				"item_recipe_dagon",
				"item_recipe_dagon",
				"item_recipe_dagon",
				"item_void_stone",
				"item_ultimate_orb",
				"item_mystic_staff"
			};

-- Set up Skill build
local SKILL_Q = "pugna_nether_blast";
local SKILL_W = "pugna_decrepify";
local SKILL_E = "pugna_nether_ward";
local SKILL_R = "pugna_life_drain";    


local ABILITY1 = "special_bonus_hp_225"
local ABILITY2 = "special_bonus_mp_regen_3"
local ABILITY3 = "special_bonus_unique_pugna_4"
local ABILITY4 = "special_bonus_respawn_reduction_35"
local ABILITY5 = "special_bonus_cast_range_150"
local ABILITY6 = "special_bonus_unique_pugna_3"
local ABILITY7 = "special_bonus_unique_pugna_2"
local ABILITY8 = "special_bonus_unique_pugna_1"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_Q,    SKILL_W,    SKILL_Q,    SKILL_E,    SKILL_Q,
    SKILL_R,    SKILL_Q,    SKILL_E,    SKILL_E,    talents[1],
    SKILL_E,    SKILL_R,    SKILL_W,    SKILL_W,    talents[4],
    SKILL_W,    "-1",       SKILL_R,    "-1",   	talents[5],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};

return X