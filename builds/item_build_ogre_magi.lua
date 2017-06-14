X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(4));

X["items"] = { 
	"item_stout_shield",
	"item_orb_of_venom",
	"item_magic_wand",
	"item_arcane_boots",
	"item_guardian_greaves",
	"item_force_staff",
	"item_glimmer_cape",
	"item_lotus_orb",
	"item_ultimate_scepter",
	"item_sheepstick"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,3,2,1,3,4,2,3,2,3,4,1,1,1,4}, skills, 
	  {1,3,5,8}, talents
);

return X