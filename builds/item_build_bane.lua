X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_arcane_boots",
	"item_guardian_greaves",
	"item_aether_lens",
	"item_force_staff",
	"item_glimmer_cape",
	"item_ultimate_scepter",
	"item_sheepstick"
};

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,2,3,2,2,4,2,3,3,1,4,1,1,1,4}, skills, 
	  {1,3,6,7}, talents
);

return X