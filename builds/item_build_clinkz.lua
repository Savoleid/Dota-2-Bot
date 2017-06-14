X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_wraith_band",
	"item_boots",
	"item_ring_of_aquila",
	"item_power_treads_agi",
	"item_blight_stone",
	"item_dragon_lance",
	"item_desolator",
	"item_orchid",
	"item_black_king_bar",
	"item_bloodthorn",
	"item_butterfly",
	"item_hurricane_pike"
};

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,3,2,3,2,4,2,3,3,1,4,1,1,1,4}, skills, 
	  {1,4,5,8}, talents
);

return X