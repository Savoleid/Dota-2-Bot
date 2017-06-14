X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_stout_shield",
	"item_magic_wand",
	"item_arcane_boots",
	"item_mekansm",
	"item_blink",
	"item_guardian_greaves",
	"item_pipe",
	"item_ultimate_scepter",
	"item_shivas_guard",
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,2,3,2,3,4,3,2,2,1,4,1,1,1,4}, skills, 
	  {2,3,6,7}, talents
);

return X