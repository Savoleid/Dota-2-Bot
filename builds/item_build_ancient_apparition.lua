X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_arcane_boots",
	"item_ultimate_scepter",
	"item_mekansm",
	"item_guardian_greaves",
	"item_force_staff",
	"item_rod_of_atos",
	"item_glimmer_cape",
	"item_sheepstick",
	"item_hurricane_pike"
};	

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,1,2,1,1,4,1,2,2,2,4,3,3,3,4}, skills, 
	  {1,4,6,7}, talents
);

return X