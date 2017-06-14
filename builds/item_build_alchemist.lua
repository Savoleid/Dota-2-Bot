X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = {
	"item_quelling_blade",
	"item_magic_wand",
	"item_power_treads_str",
	"item_radiance",
	"item_manta",
	"item_octarine_core",
	"item_assault",
	"item_abyssal_blade"
};

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,1,3,1,3,4,1,3,1,2,4,2,2,2,4}, skills, 
	  {1,4,5,7}, talents
);			

return X