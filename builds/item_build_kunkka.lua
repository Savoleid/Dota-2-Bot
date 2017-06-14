X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_phase_boots",
	"item_shadow_blade",
	"item_greater_crit",
	"item_blink",
	"item_silver_edge",
	"item_black_king_bar",
	"item_ultimate_scepter"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,1,2,1,2,4,2,1,1,3,4,3,3,3,4}, skills, 
	  {1,3,5,8}, talents
);

return X