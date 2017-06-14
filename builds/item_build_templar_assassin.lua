X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(4));

X["items"] = { 
	"item_wraith_band",
	"item_boots",
	"item_ring_of_aquila",
	"item_power_treads_agi",
	"item_desolator",
	"item_blink",
	"item_black_king_bar",
	"item_bloodthorn",
	"item_butterfly"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,1,1,2,1,4,1,3,3,3,4,2,2,2,4}, skills, 
	  {1,4,6,8}, talents
);

return X