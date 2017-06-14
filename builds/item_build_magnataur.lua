X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_stout_shield",
	"item_magic_wand",
	"item_arcane_boots",
	"item_blink",
	"item_force_staff",
	"item_black_king_bar",
	"item_shivas_guard",
	"item_refresher",
	"item_hurricane_pike"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,1,3,1,4,1,2,2,2,4,2,3,3,4}, skills, 
	  {1,4,5,7}, talents
);

return X