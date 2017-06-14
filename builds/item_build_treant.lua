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
	"item_blink",
	"item_glimmer_cape",
	"item_pipe",
	"item_lotus_orb",
	"item_radiance"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,3,2,3,4,3,1,1,1,4,2,2,2,4}, skills, 
	  {2,3,5,8}, talents
);

return X