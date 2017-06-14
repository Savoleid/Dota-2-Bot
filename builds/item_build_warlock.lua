X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_arcane_boots",
	"item_guardian_greaves",
	"item_ultimate_scepter",
	"item_lotus_orb",
	"item_refresher",
	"item_shivas_guard",
	"item_sheepstick"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,1,2,1,2,4,2,1,1,3,4,3,3,3,4}, skills, 
	  {1,3,6,8}, talents
);


return X