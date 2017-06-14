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
				"item_magic_stick",
				"item_ring_of_protection",
				"item_sobi_mask",
				"item_blades_of_attack",
				"item_blades_of_attack",
				"item_point_booster",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_blade_of_alacrity",
				"item_blade_of_alacrity",
				"item_boots_of_elves",
				"item_recipe_yasha",
				"item_mithril_hammer",
				"item_gloves",
				"item_recipe_maelstrom",
				"item_ultimate_orb",
				"item_recipe_manta",
				"item_hyperstone",
				"item_recipe_mjollnir",
				"item_ogre_axe",
				"item_mithril_hammer",
				"item_recipe_black_king_bar",
				"item_broadsword",
				"item_blades_of_attack",
				"item_recipe_lesser_crit",
				"item_demon_edge",
				"item_recipe_greater_crit"
			};

-- Set up Skill build
local SKILL_Q = "mirana_starfall";
local SKILL_W = "mirana_arrow";
local SKILL_E = "mirana_leap";
local SKILL_R = "mirana_invis";    


local ABILITY1 = "special_bonus_hp_150"
local ABILITY2 = "special_bonus_agility_8"
local ABILITY3 = "special_bonus_attack_speed_30"
local ABILITY4 = "special_bonus_spell_amplify_5"
local ABILITY5 = "special_bonus_unique_mirana_3"
local ABILITY6 = "special_bonus_attack_damage_50"
local ABILITY7 = "special_bonus_unique_mirana_2"
local ABILITY8 = "special_bonus_unique_mirana_1"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_W,    SKILL_Q,    SKILL_Q,    SKILL_E,    SKILL_Q,
    SKILL_R,    SKILL_Q,    SKILL_E,    SKILL_W,    talents[1],
    SKILL_W,    SKILL_R,    SKILL_W,    SKILL_E,    talents[3],
    SKILL_E,    "-1",       SKILL_R,    "-1",   	talents[6],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};

return X