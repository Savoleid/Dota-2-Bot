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
	"item_dragon_lance",
	"item_lifesteal",
	"item_manta",
	"item_black_king_bar"
	"item_butterfly",
	"item_satanic",
	"item_eye_of_skadi"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,1,1,2,1,4,1,2,2,2,4,3,3,3,4}, skills, 
	  {1,4,5,8}, talents
);

return X