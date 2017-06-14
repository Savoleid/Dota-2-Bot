X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_stout_shield",
	"item_soul_ring",
	"item_arcane_boots",
	"item_mekansm",
	"item_guardian_greaves",
	"item_pipe",
	"item_blink",
	"item_lotus_orb",
	"item_shivas_guard"
};

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,3,2,3,2,4,2,1,1,1,4,1,3,3,4}, skills, 
	  {1,4,5,8}, talents
);

return X