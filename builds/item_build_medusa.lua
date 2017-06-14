X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_wraith_band",
	"item_boots",
	"item_ring_of_aquila",
	"item_phase_boots",
	"item_dragon_lance",
	"item_linken_sphere",
	"item_maelstrom",
	"item_eye_of_skadi",
	"item_mjollnir",
	"item_butterfly",
	"item_hurricane_pike"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,3,2,3,2,4,2,3,3,1,4,1,1,1,4}, skills, 
	  {2,3,5,7}, talents
);

return X