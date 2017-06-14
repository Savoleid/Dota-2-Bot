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
				"item_ultimate_orb",
				"item_recipe_manta",
				"item_ogre_axe",
				"item_mithril_hammer",
				"item_recipe_black_king_bar",
				"item_ultimate_orb",
				"item_recipe_silver_edge",
				"item_eagle",
				"item_quarterstaff",
				"item_talisman_of_evasion",
				"item_lifesteal",
				"item_reaver",
				"item_mithril_hammer",
				"item_staff_of_wizardry",
				"item_ring_of_health",
				"item_recipe_force_staff",
				"item_recipe_hurricane_pike"
			};

-- Set up Skill build
local SKILL_Q = "nevermore_shadowraze1";
local SKILL_W = "nevermore_necromastery";
local SKILL_E = "nevermore_dark_lord";
local SKILL_R = "nevermore_requiem";    

local ABILITY1 = "special_bonus_attack_speed_20"
local ABILITY2 = "special_bonus_movement_speed_15"
local ABILITY3 = "special_bonus_hp_175"
local ABILITY4 = "special_bonus_spell_amplify_6"
local ABILITY5 = "special_bonus_unique_nevermore_1"
local ABILITY6 = "special_bonus_lifesteal_15"
local ABILITY7 = "special_bonus_unique_nevermore_2"
local ABILITY8 = "special_bonus_attack_range_150"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_W,    SKILL_Q,    SKILL_Q,    SKILL_W,    SKILL_Q,
    SKILL_Q,    SKILL_W,    SKILL_W,    SKILL_R,    talents[2],
    SKILL_E,    SKILL_R,    SKILL_E,    SKILL_E,    talents[3],
    SKILL_E,    "-1",       SKILL_R,    "-1",   	talents[6],
    "-1",   	"-1",   	"-1",       "-1",       talents[7]
};

return X