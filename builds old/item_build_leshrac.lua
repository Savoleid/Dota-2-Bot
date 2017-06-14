X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
--[[ warning if meepo does not have an item other than 
brown boots / power treads at any time he will think he 
is a clone and skill/item decisions will break! ]]
X["items"] = {
				"item_clarity",
				"item_magic_stick",
				"item_boots",
				"item_energy_booster",
				"item_staff_of_wizardry",
				"item_ring_of_health",
				"item_recipe_force_staff",
				"item_staff_of_wizardry",
				"item_gauntlets",
				"item_circlet",
				"item_recipe_bracer",
				"item_gauntlets",
				"item_circlet",
				"item_recipe_bracer",
				"item_recipe_rod_of_atos",
				"item_point_booster",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_blade_of_alacrity",
				"item_point_booster",
				"item_vitality_booster",
				"item_energy_booster",
				"item_mystic_staff",
				"item_platemail",
				"item_mystic_staff",
				"item_recipe_shivas_guard"
			};

-- Set up Skill build
local SKILL_Q = "leshrac_split_earth";
local SKILL_W = "leshrac_diabolic_edict";
local SKILL_E = "leshrac_lightning_storm";
local SKILL_R = "leshrac_pulse_nova";    


local ABILITY1 = "special_bonus_movement_speed_15"
local ABILITY2 = "special_bonus_hp_125"
local ABILITY3 = "special_bonus_magic_resistance_10"
local ABILITY4 = "special_bonus_mp_400"
local ABILITY5 = "special_bonus_strength_15"
local ABILITY6 = "special_bonus_spell_amplify_5"
local ABILITY7 = "special_bonus_unique_leshrac_2"
local ABILITY8 = "special_bonus_unique_leshrac_1"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_Q,    SKILL_W,    SKILL_W,    SKILL_Q,    SKILL_W,
    SKILL_R,    SKILL_W,    SKILL_Q,    SKILL_Q,    talents[1],
    SKILL_E,    SKILL_R,    SKILL_E,    SKILL_E,    talents[3],
    SKILL_E,    "-1",       SKILL_R,    "-1",   	talents[5],
    "-1",   	"-1",   	"-1",       "-1",       talents[7]
};

return X