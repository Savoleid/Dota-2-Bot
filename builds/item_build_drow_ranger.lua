X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_wraith_band",
	"item_magic_wand",
	"item_boots",
	"item_ring_of_aquila",
	"item_power_treads_agi",
	"item_shadow_blade",
	"item_dragon_lance",
	"item_ultimate_scepter",
	"item_manta",
	"item_black_king_bar",
	"item_silver_edge",
	"item_butterfly",
	"item_hurricane_pike"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,1,3,2,3,4,3,2,2,2,4,1,1,1,4}, skills, 
	  {2,4,5,8}, talents
);

return X