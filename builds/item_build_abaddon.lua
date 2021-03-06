X = {}

local IBUtil  = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot  = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = {
	"item_magic_wand",
	"item_arcane_boots",
	"item_mekansm",
	"item_guardian_greaves",
	"item_blade_mail",
	"item_ultimate_scepter",
	"item_lotus_orb",
	"item_shivas_guard",
	"item_radiance"
};

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,1,2,2,3,4,2,1,1,1,4,3,3,3,4}, skills, 
	  {2,4,6,8}, talents
);

return X