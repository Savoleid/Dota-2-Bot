X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_power_treads_str",
	"item_lifesteal",
	"item_dragon_lance",
	"item_heavens_halberd",
	"item_assault",
	"item_hurricane_pike",
	"item_satanic",
	"item_ultimate_scepter"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,3,2,3,2,4,2,3,3,1,4,1,1,1,4}, skills, 
	  {2,3,6,8}, talents
);

return X