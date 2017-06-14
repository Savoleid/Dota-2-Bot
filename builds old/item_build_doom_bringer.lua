X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
--[[ warning if meepo does not have an item other than 
brown boots / power treads at any time he will think he 
is a clone and skill/item decisions will break! ]]
X["items"] = {
				"item_stout_shield",
				"item_magic_stick",
				"item_boots",
				"item_blades_of_attack",
				"item_blades_of_attack",
				"item_chainmail",
				"item_robe",
				"item_broadsword",
				"item_shadow_amulet",
				"item_claymore",
				"item_platemail",
				"item_mystic_staff",
				"item_recipe_shivas_guard",
				"item_point_booster",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_blade_of_alacrity",
				"item_ultimate_orb",
				"item_recipe_silver_edge",
				"item_vitality_booster",
				"item_reaver",
				"item_vitality_booster"
			};

-- Set up Skill build
local SKILL_Q = "doom_bringer_devour";
local SKILL_W = "doom_bringer_scorched_earth";
local SKILL_E = "doom_bringer_infernal_blade";
local SKILL_R = "doom_bringer_doom";    


local ABILITY1 = "special_bonus_unique_doom_3"
local ABILITY2 = "special_bonus_hp_250"
local ABILITY3 = "special_bonus_unique_doom_4"
local ABILITY4 = "special_bonus_movement_speed_20"
local ABILITY5 = "special_bonus_hp_regen_25"
local ABILITY6 = "special_bonus_unique_doom_5"
local ABILITY7 = "special_bonus_unique_doom_2"
local ABILITY8 = "special_bonus_unique_doom_1"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_Q,    SKILL_W,    SKILL_W,    SKILL_E,    SKILL_W,
    SKILL_R,    SKILL_W,    SKILL_E,    SKILL_E,    talents[2],
    SKILL_E,    SKILL_R,    SKILL_Q,    SKILL_Q,    talents[4],
    SKILL_Q,    "-1",       SKILL_R,    "-1",   	talents[5],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};

return X