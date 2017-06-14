X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_quelling_blade",
	"item_stout_shield",
	"item_magic_wand",
	"item_power_treads_str",
	"item_blink",
	"item_blade_mail",
	"item_shadow_blade",
	"item_assault",
	"item_silver_edge",
	"item_abyssal_blade",
	"item_ultimate_scepter"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,2,1,3,1,4,1,2,2,2,4,3,3,3,4}, skills, 
	  {1,3,5,7}, talents
);

return X