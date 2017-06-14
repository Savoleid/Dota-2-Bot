X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_stout_shield",
	"item_orb_of_venom",
	"item_poor_mans_shield",
	"item_magic_wand",
	"item_phase_boots",
	"item_diffusal_blade_1",
	"item_sange_and_yasha",
	"item_skull_basher",
	"item_butterfly",
	"item_eye_of_skadi",
	"item_abyssal_blade"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,1,1,2,1,4,1,2,2,2,4,3,3,3,4}, skills, 
	  {1,3,6,8}, talents
);

return X