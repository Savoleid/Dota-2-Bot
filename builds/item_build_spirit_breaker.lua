X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_poor_mans_shield",
	"item_magic_wand",
	"item_power_treads_str",
	"item_urn_of_shadows",
	"item_blade_mail",
	"item_shadow_blade",
	"item_heavens_halberd",
	"item_silver_edge",
	"item_assault",
	"item_ultimate_scepter"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,1,1,2,1,4,1,3,3,3,4,2,2,2,4}, skills, 
	  {2,4,6,8}, talents
);

return X