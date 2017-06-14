X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_power_treads_int",
	"item_orchid",
	"item_hurricane_pike",
	"item_ultimate_scepter",
	"item_bloodthorn",
	"item_sheepstick",
	"item_octarine_core"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,1,3,1,4,1,3,3,2,4,2,2,2,4}, skills, 
	  {1,4,5,8}, talents
);

return X