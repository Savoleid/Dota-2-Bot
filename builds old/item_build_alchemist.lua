X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
--[[ warning if meepo does not have an item other than 
brown boots / power treads at any time he will think he 
is a clone and skill/item decisions will break! ]]
X["items"] = { 
				"item_stout_shield",
				"item_quelling_blade",
				"item_magic_stick",
				"item_boots",
				"item_gloves",
				"item_belt_of_strength",
				"item_relic",
				"item_recipe_radiance",
				"item_blade_of_alacrity",
				"item_boots_of_elves",
				"item_recipe_yasha",
				"item_ultimate_orb",
				"item_recipe_manta",
				"item_point_booster",
				"item_vitality_booster",
				"item_energy_booster",
				"item_mystic_staff",
				"item_hyperstone",
				"item_platemail",
				"item_chainmail",
				"item_recipe_assault",
				"item_javelin",
				"item_belt_of_strength",
				"item_recipe_basher",
				"item_stout_shield",
				"item_ring_of_health",
				"item_vitality_booster",
				"item_recipe_abyssal_blade"
			};

-- Set up Skill build
local SKILL_Q = "alchemist_acid_spray";
local SKILL_W = "alchemist_unstable_concoction";
local SKILL_E = "alchemist_goblins_greed";
local SKILL_R = "alchemist_chemical_rage";    


local ABILITY1 = "special_bonus_armor_4"
local ABILITY2 = "special_bonus_attack_damage_20"
local ABILITY3 = "special_bonus_all_stats_6"
local ABILITY4 = "special_bonus_unique_alchemist_2"
local ABILITY5 = "special_bonus_hp_300"
local ABILITY6 = "special_bonus_attack_speed_30"
local ABILITY7 = "special_bonus_unique_alchemist"
local ABILITY8 = "special_bonus_lifesteal_30"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_E,    SKILL_Q,    SKILL_E,    SKILL_W,    SKILL_E,
    SKILL_R,    SKILL_E,    SKILL_Q,    SKILL_Q,    talents[1],
    SKILL_Q,    SKILL_R,    SKILL_W,    SKILL_W,    talents[4],
    SKILL_W,    "-1",       SKILL_R,    "-1",   	talents[5],
    "-1",   	"-1",   	"-1",       "-1",       talents[7]
};

return X