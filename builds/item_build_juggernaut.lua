X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_quelling_blade",
	"item_poor_mans_shield",
	"item_magic_wand",
	"item_phase_boots",
	"item_diffusal_blade_1",
	"item_manta",
	"item_skull_basher",
	"item_butterfly",
	"item_abyssal_blade",
	"item_eye_of_skadi"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,1,2,1,4,1,2,3,2,4,2,3,3,4}, skills, 
	  {2,3,6,7}, talents
);

return X