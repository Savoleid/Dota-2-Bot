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
				"item_gloves",
				"item_belt_of_strength",
				--"item_blades_of_attack",
				--"item_helm_of_iron_will",
				--"item_gloves",
				--"item_recipe_armlet",
				"item_lifesteal",
				"item_boots_of_elves",
				"item_boots_of_elves",
				"item_ogre_axe",
				"item_ogre_axe",
				"item_belt_of_strength",
				"item_recipe_sange",
				"item_talisman_of_evasion",
				"item_ogre_axe",
				"item_mithril_hammer",
				"item_recipe_black_king_bar",
				"item_mithril_hammer",
				"item_reaver",
				"item_point_booster",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_blade_of_alacrity",
				"item_staff_of_wizardry",
				"item_ring_of_health",
				"item_recipe_force_staff",
				"item_recipe_hurricane_pike"
			};

-- Set up Skill build
local SKILL_Q = "huskar_inner_vitality";
local SKILL_W = "huskar_burning_spear";
local SKILL_E = "huskar_berserkers_blood";
local SKILL_R = "huskar_life_break";    

local ABILITY1 = "special_bonus_unique_huskar_2"
local ABILITY2 = "special_bonus_hp_175"
local ABILITY3 = "special_bonus_lifesteal_15"
local ABILITY4 = "special_bonus_attack_damage_30"
local ABILITY5 = "special_bonus_attack_speed_40"
local ABILITY6 = "special_bonus_strength_15"
local ABILITY7 = "special_bonus_unique_huskar"
local ABILITY8 = "special_bonus_attack_range_100"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_W,    SKILL_E,    SKILL_W,    SKILL_E,    SKILL_W,
    SKILL_R,    SKILL_W,    SKILL_E,    SKILL_E,    talents[2],
    SKILL_Q,    SKILL_R,    SKILL_Q,    SKILL_Q,    talents[3],
    SKILL_Q,    "-1",       SKILL_R,    "-1",   	talents[6],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};


return X