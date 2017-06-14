X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_poor_mans_shield",
	"item_quelling_blade",
	"item_power_treads_agi",
	"item_manta",
	"item_black_king_bar",
	"item_mjollnir",
	"item_assault",
	"item_butterfly"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,1,3,1,4,1,3,3,2,4,2,2,2,4}, skills, 
	  {1,4,6,8}, talents
);

return X