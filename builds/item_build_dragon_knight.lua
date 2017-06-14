X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_poor_mans_shield",
	"item_magic_wand",
	"item_power_treads_str",
	"item_shadow_blade",
	"item_sange_and_yasha",
	"item_black_king_bar",
	"item_silver_edge",
	"item_assault",
	"item_heart"
};	

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,1,1,3,1,4,1,3,3,3,4,2,2,2,4}, skills, 
	  {2,4,6,8}, talents
);

return X