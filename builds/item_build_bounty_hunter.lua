X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_orb_of_venom",
	"item_stout_shield",
	"item_magic_wand",
	"item_arcane_boots",
	"item_medallion_of_courage",
	"item_desolator",
	"item_solar_crest",
	"item_orchid",
	"item_sange_and_yasha",
	"item_bloodthorn",
	"item_black_king_bar",
	"item_ultimate_scepter",
};

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {3,2,1,1,1,4,1,3,2,3,4,3,2,2,4}, skills, 
	  {1,3,6,8}, talents
);

return X