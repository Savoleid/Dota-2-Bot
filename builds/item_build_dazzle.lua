X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_boots",
	"item_urn_of_shadows",
	"item_arcane_boots",
	"item_guardian_greaves",
	"item_force_staff",
	"item_glimmer_cape",
	"item_ultimate_scepter",
	"item_solar_crest",
	"item_sheepstick",
	"item_hurricane_pike"
};

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,2,3,2,3,4,3,2,2,1,4,1,1,1,4}, skills, 
	  {2,3,6,8}, talents
);

return X