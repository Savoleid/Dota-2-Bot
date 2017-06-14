X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_wraith_band",
	"item_magic_wand",
	"item_phase_boots",
	"item_ring_of_aquila",
	"item_dragon_lance",
	"item_manta",
	"item_ultimate_scepter",
	"item_black_king_bar",
	"item_hurricane_pike",
	"item_butterfly",
	"item_satanic"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,1,3,1,4,1,3,3,2,4,2,2,2,4}, skills, 
	  {1,4,6,8}, talents
);

return X