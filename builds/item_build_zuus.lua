X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(4));

X["items"] = { 
	"item_null_talisman",
	"item_magic_wand",
	"item_arcane_boots",
	"item_aether_lens",
	"item_veil_of_discord",
	"item_blink",
	"item_octarine_core",
	"item_sheepstick"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,2,2,3,2,4,2,1,1,1,4,3,3,3,4}, skills, 
	  {1,3,5,7}, talents
);

return X