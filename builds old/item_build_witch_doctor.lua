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
				"item_circlet",
				"item_ring_of_protection",
				"item_recipe_urn_of_shadows",
				"item_infused_raindrop",
				"item_chainmail",
				"item_recipe_buckler",
				"item_branches",
				"item_ring_of_regen",
				"item_recipe_headdress",
				"item_branches",
				"item_recipe_mekansm",
				"item_recipe_guardian_greaves",
				"item_cloak",
				"item_shadow_amulet",
				"item_void_stone",
				"item_energy_booster",
				"item_recipe_aether_lens",
				"item_point_booster",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_blade_of_alacrity",
				"item_ogre_axe",
				"item_mithril_hammer",
				"item_recipe_black_king_bar",
				"item_void_stone",
				"item_ultimate_orb",
				"item_mystic_staff"
			};

-- Set up Skill build
local SKILL_Q = "witch_doctor_paralyzing_cask";
local SKILL_W = "witch_doctor_voodoo_restoration";
local SKILL_E = "witch_doctor_maledict";
local SKILL_R = "witch_doctor_death_ward";    


local ABILITY1 = "special_bonus_exp_boost_25"
local ABILITY2 = "special_bonus_hp_200"
local ABILITY3 = "special_bonus_respawn_reduction_40"
local ABILITY4 = "special_bonus_attack_damage_90"
local ABILITY5 = "special_bonus_magic_resistance_15"
local ABILITY6 = "special_bonus_armor_8"
local ABILITY7 = "special_bonus_unique_witch_doctor_2"
local ABILITY8 = "special_bonus_unique_witch_doctor_1"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_Q,    SKILL_E,    SKILL_Q,    SKILL_W,    SKILL_Q,
    SKILL_R,    SKILL_Q,    SKILL_W,    SKILL_E,    talents[1],
    SKILL_W,    SKILL_R,    SKILL_W,    SKILL_E,    talents[4],
    SKILL_E,    "-1",       SKILL_R,    "-1",   	talents[5],
    "-1",   	"-1",   	"-1",       "-1",       talents[8]
};

return X