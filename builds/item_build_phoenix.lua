X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(4));

X["items"] = { 
	"item_magic_wand",
	"item_arcane_boots",
	"item_guardian_greaves",
	"item_force_staff",
	"item_pipe",
	"item_shivas_guard",
	"item_lotus_orb",
	"item_heart",
	"item_hurricane_pike"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,3,2,3,4,3,2,2,2,4,1,1,1,4}, skills, 
	  {1,3,5,7}, talents
);

return X