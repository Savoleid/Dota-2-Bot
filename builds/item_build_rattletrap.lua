X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_stout_shield",
	"item_magic_wand",
	"item_tranquil_boots",
	"item_force_staff",
	"item_blade_mail",
	"item_ultimate_scepter",
	"item_lotus_orb",
	"item_shivas_guard"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,2,1,3,1,4,1,3,3,3,4,2,2,2,4}, skills, 
	  {1,4,5,8}, talents
);

return X