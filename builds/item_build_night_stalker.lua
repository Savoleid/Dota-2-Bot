X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_poor_mans_shield",
	"item_magic_wand",
	"item_phase_boots",
	"item_urn_of_shadows",
	"item_ultimate_scepter",
	"item_solar_crest",
	"item_sange_and_yasha",
	"item_black_king_bar",
	"item_abyssal_blade"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,2,1,3,1,4,1,3,3,3,4,2,2,2,4}, skills, 
	  {2,4,6,8}, talents
);

return X