X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(4));

X["items"] = { 
	"item_magic_wand",
	"item_power_treads_int",
	"item_blink",
	"item_cyclone",
	"item_ultimate_scepter",
	"item_sheepstick",
	"item_dagon_5"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,1,2,1,4,1,2,2,2,4,3,3,3,4}, skills, 
	  {1,3,6,7}, talents
);

return X