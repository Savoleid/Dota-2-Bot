X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_null_talisman",
	"item_arcane_boots",
	"item_guardian_greaves",
	"item_force_staff",
	"item_ultimate_scepter",
	"item_glimmer_cape",
	"item_shivas_guard",
	"item_sheepstick",
	"item_hurricane_pike"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,2,1,3,1,4,1,3,3,3,4,2,2,2,4}, skills, 
	  {1,4,6,8}, talents
);

return X