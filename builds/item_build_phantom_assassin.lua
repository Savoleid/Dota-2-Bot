X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_poor_mans_shield",
	"item_blight_stone",
	"item_magic_wand",
	"item_phase_boots",
	"item_desolator",
	"item_vladmir",
	"item_black_king_bar",
	"item_skull_basher",
	"item_assault",
	"item_abyssal_blade"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,1,2,1,4,1,2,2,2,4,3,3,3,4}, skills, 
	  {2,3,6,8}, talents
);

return X