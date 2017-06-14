X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
--[[ warning if meepo does not have an item other than 
brown boots / power treads at any time he will think he 
is a clone and skill/item decisions will break! ]]
X["items"] = {
				"item_circlet",
				"item_ring_of_protection",
				"item_boots",
				"item_recipe_urn_of_shadows",
				"item_infused_raindrop",
				"item_energy_booster",
				"item_cloak",
				"item_ring_of_health",
				"item_ring_of_regen",
				"item_void_stone",
				"item_energy_booster",
				"item_recipe_aether_lens",
				"item_blink",
				"item_point_booster",
				"item_blade_of_alacrity",
				"item_ogre_axe",
				"item_staff_of_wizardry",
				"item_ring_of_regen",
				"item_branches",
				"item_recipe_headdress",
				"item_recipe_pipe",
				"item_ring_of_health",
				"item_void_stone",
				"item_platemail",
				"item_energy_booster",
				"item_reaver",
				"item_vitality_booster",
				"item_recipe_heart",
				"item_platemail",
				"item_mystic_staff",
				"item_recipe_shivas_guard"
			};

-- Set up Skill build
local SKILL_Q = "pudge_meat_hook";
local SKILL_W = "pudge_rot";
local SKILL_E = "pudge_flesh_heap";
local SKILL_R = "pudge_dismember";    


local ABILITY1 = "special_bonus_mp_regen_2"
local ABILITY2 = "special_bonus_strength_8"
local ABILITY3 = "special_bonus_movement_speed_15"
local ABILITY4 = "special_bonus_armor_5"
local ABILITY5 = "special_bonus_respawn_reduction_40"
local ABILITY6 = "special_bonus_gold_income_25"
local ABILITY7 = "special_bonus_unique_pudge_2"
local ABILITY8 = "special_bonus_unique_pudge_1"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_W,    SKILL_Q,    SKILL_Q,    SKILL_W,    SKILL_Q,
    SKILL_R,    SKILL_Q,    SKILL_W,    SKILL_W,    talents[2],
    SKILL_E,    SKILL_R,    SKILL_E,    SKILL_E,    talents[3],
    SKILL_E,    "-1",       SKILL_R,    "-1",   	talents[6],
    "-1",   	"-1",   	"-1",       "-1",       talents[7]
};

return X