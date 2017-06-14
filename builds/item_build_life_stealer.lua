X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(3));

X["items"] = { 
	"item_stout_shield",
	"item_blight_stone",
	"item_phase_boots",
	"item_echo_sabre",
	"item_desolator",
	"item_assault",
	"item_skull_basher",
	"item_mjollnir",
	"item_abyssal_blade",
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,3,1,1,1,4,1,3,3,2,4,2,2,2,4}, skills, 
	  {2,3,5,8}, talents
);

return X