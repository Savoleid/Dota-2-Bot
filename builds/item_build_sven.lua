X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_quelling_blade",
	"item_poor_mans_shield",
	"item_magic_wand",
	"item_power_treads_str",
	"item_lifesteal",
	"item_echo_sabre",
	"item_blink",
	"item_black_king_bar",
	"item_assault",
	"item_satanic"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,2,2,3,2,4,2,3,3,3,4,1,1,1,4}, skills, 
	  {2,4,6,8}, talents
);

return X