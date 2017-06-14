X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_stout_shield",
	"item_magic_wand",
	"item_power_treads_str",
	"item_blink",
	"item_force_staff",
	"item_crimson_guard",
	"item_black_king_bar",
	"item_assault"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,1,2,3,2,4,2,1,1,1,4,3,3,3,4}, skills, 
	  {1,3,6,7}, talents
);

return X