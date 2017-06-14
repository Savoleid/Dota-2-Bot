X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_stout_shield",
	"item_quelling_blade",
	"item_magic_wand",
	"item_power_treads_str",
	"item_vanguard",
	"item_blade_mail",
	"item_crimson_guard",
	"item_heart",
	"item_octarine_core",
	"item_assault"
};

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,3,2,3,2,4,2,3,3,1,4,1,1,1,4}, skills, 
	  {2,3,6,8}, talents
);

return X