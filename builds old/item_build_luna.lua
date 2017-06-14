X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
--[[ warning if meepo does not have an item other than 
brown boots / power treads at any time he will think he 
is a clone and skill/item decisions will break! ]]
X["items"] = {
				"item_circlet",
				"item_slippers",
				"item_recipe_wraith_band",
				"item_boots",
				"item_ring_of_protection",
				"item_sobi_mask",
				"item_boots_of_elves",
				"item_gloves",
				"item_boots_of_elves",
				"item_boots_of_elves",
				"item_ogre_axe",
				"item_shadow_amulet",
				"item_claymore",
				"item_blade_of_alacrity",
				"item_boots_of_elves",
				"item_recipe_yasha",
				"item_ogre_axe",
				"item_mithril_hammer",
				"item_recipe_black_king_bar",
				"item_ultimate_orb",
				"item_recipe_manta",
				"item_ultimate_orb",
				"item_recipe_silver_edge",
				"item_eagle",
				"item_quarterstaff",
				"item_talisman_of_evasion",
				"item_staff_of_wizardry",
				"item_ring_of_health",
				"item_recipe_force_staff",
				"item_recipe_hurricane_pike"
			};

-- Set up Skill build
local SKILL_Q = "luna_lucent_beam";
local SKILL_W = "luna_moon_glaive";
local SKILL_E = "luna_lunar_blessing";
local SKILL_R = "luna_eclipse";    


local ABILITY1 = "special_bonus_movement_speed_15"
local ABILITY2 = "special_bonus_attack_damage_15"
local ABILITY3 = "special_bonus_unique_luna_1"
local ABILITY4 = "special_bonus_hp_150"
local ABILITY5 = "special_bonus_magic_resistance_10"
local ABILITY6 = "special_bonus_attack_speed_25"
local ABILITY7 = "special_bonus_unique_luna_2"
local ABILITY8 = "special_bonus_all_stats_15"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_E,    SKILL_Q,    SKILL_Q,    SKILL_E,    SKILL_Q,
    SKILL_R,    SKILL_Q,    SKILL_W,    SKILL_W,    talents[1],
    SKILL_W,    SKILL_R,    SKILL_W,    SKILL_E,    talents[4],
    SKILL_E,    "-1",       SKILL_R,    "-1",   	talents[5],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};

return X