X = {}
local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_stout_shield",
	"item_magic_wand",
	"item_tranquil_boots",
	"item_blink",
	"item_hood_of_defiance",
	"item_ultimate_scepter",
	"item_pipe",
	"item_heart",
	"item_shivas_guard"
};	
			
X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,2,2,3,2,4,2,1,1,1,4,3,3,3,4}, skills, 
	  {2,4,6,8}, talents
);

return X