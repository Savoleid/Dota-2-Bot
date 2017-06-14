X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(3));

X["items"] = { 
	"item_stout_shield",
	"item_magic_wand",
	"item_phase_boots",
	"item_blade_mail",
	"item_shadow_blade",
	"item_shivas_guard",
	"item_ultimate_scepter",
	"item_silver_edge",
	"item_heart"
};	

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,2,2,3,2,4,2,3,3,3,4,1,1,1,4}, skills, 
	  {2,4,5,8}, talents
);

return X