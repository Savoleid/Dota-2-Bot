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
				"item_gloves",
				"item_belt_of_strength",
				"item_staff_of_wizardry",
				"item_ring_of_health",
				"item_recipe_force_staff",
				"item_quarterstaff",
				"item_sobi_mask",
				"item_robe",
				"item_quarterstaff",
				"item_sobi_mask",
				"item_robe",
				"item_recipe_orchid",
				"item_boots_of_elves",
				"item_boots_of_elves",
				"item_ogre_axe",
				"item_recipe_hurricane_pike",
				"item_point_booster",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_blade_of_alacrity",
				"item_broadsword",
				"item_blades_of_attack",
				"item_recipe_lesser_crit",
				"item_recipe_bloodthorn",
				"item_void_stone",
				"item_ultimate_orb",
				"item_mystic_staff",
				"item_ogre_axe",
				"item_mithril_hammer",
				"item_recipe_black_king_bar"
			};

-- Set up Skill build
local SKILL_Q = "silencer_curse_of_the_silent";
local SKILL_W = "silencer_glaives_of_wisdom";
local SKILL_E = "silencer_last_word";
local SKILL_R = "silencer_global_silence";    

local ABILITY1 = "special_bonus_intelligence_7"
local ABILITY2 = "special_bonus_armor_4"
local ABILITY3 = "special_bonus_gold_income_10"
local ABILITY4 = "special_bonus_hp_200"
local ABILITY5 = "special_bonus_magic_resistance_12"
local ABILITY6 = "special_bonus_attack_speed_30"
local ABILITY7 = "special_bonus_unique_silencer"
local ABILITY8 = "special_bonus_attack_range_200"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_Q,    SKILL_E,    SKILL_Q,    SKILL_E,    SKILL_Q,
    SKILL_R,    SKILL_Q,    SKILL_E,    SKILL_E,    talents[1],
    SKILL_W,    SKILL_R,    SKILL_W,    SKILL_W,    talents[4],
    SKILL_W,    "-1",       SKILL_R,    "-1",   	talents[5],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};

return X