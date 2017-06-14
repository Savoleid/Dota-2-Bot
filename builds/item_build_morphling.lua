X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(3));

X["items"] = { 
	"item_wraith_band",
	"item_magic_wand",
	"item_boots",
	"item_ring_of_aquila",
	"item_power_treads_agi",
	"item_linken_sphere",
	"item_ethereal_blade",
	"item_eye_of_skadi",
	"item_butterfly",
	"item_satanic"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,1,1,3,1,1,3,3,4,2,4,2,2,2,4}, skills, 
	  {1,3,6,7}, talents
);

return X