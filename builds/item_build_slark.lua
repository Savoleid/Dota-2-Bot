X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_poor_mans_shield",
	"item_orb_of_venom",
	"item_magic_wand",
	"item_power_treads_agi",
	"item_echo_sabre",
	"item_silver_edge",
	"item_skull_basher",
	"item_eye_of_skadi",
	"item_abyssal_blade",
	"item_butterfly"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {2,3,1,1,1,4,1,2,2,2,4,3,3,3,4}, skills, 
	  {1,3,6,8}, talents
);

return X