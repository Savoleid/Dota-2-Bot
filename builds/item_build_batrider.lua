X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = {
	"item_magic_wand",
	"item_tranquil_boots",
	"item_blink",
	"item_force_staff",
	"item_black_king_bar",
	"item_aether_lens",
	"item_ultimate_scepter",
	"item_hurricane_pike"
};

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,3,1,3,4,3,1,1,1,4,2,2,2,4}, skills, 
	  {2,3,6,7}, talents
);

return X