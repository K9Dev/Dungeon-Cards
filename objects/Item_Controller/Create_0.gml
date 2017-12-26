/// 

log("CREATING ITEM CONTROLLER");


/// Create global weapons

/*
  Icon
  Name
  Type
  Damage
  Description
  Quality
  Bonus 1
  Bonus 2
  Requirements
*/

// Quality Colors
global.colCommon = c_white;
global.colUncommon = c_lime;
global.colRare = c_blue;
global.colEpic = c_purple;
global.colLegendary = c_orange;
global.colArtifact = c_fuchsia;

global.all_item_instances = ds_list_create();

/* */
/// Axes
// Common Weapon
global.arrayWeapons[0,0] = noone;
global.arrayWeapons[0,1] = "";
global.arrayWeapons[0,2] = "";
global.arrayWeapons[0,3] = "";
global.arrayWeapons[0,4] = "";
global.arrayWeapons[0,5] = global.colCommon;
global.arrayWeapons[0,6] = "";
global.arrayWeapons[0,7] = "";
global.arrayWeapons[0,8] = "";
global.arrayWeapons[0,9] = noone;

// Uncommon Weapon
global.arrayWeapons[1,0] = 1;
global.arrayWeapons[1,1] = "Uncommon Sword";
global.arrayWeapons[1,2] = "1-H Sword";
global.arrayWeapons[1,3] = "17-19 Damage";
global.arrayWeapons[1,4] = "Your soul will be mine...";
global.arrayWeapons[1,5] = global.colUncommon;
global.arrayWeapons[1,6] = "+5 Strength";
global.arrayWeapons[1,7] = "";
global.arrayWeapons[1,8] = "Requires Level 5";
global.arrayWeapons[1,9] = noone;

// Rare Weapon
global.arrayWeapons[2,0] = 2;
global.arrayWeapons[2,1] = "Rare Gun";
global.arrayWeapons[2,2] = "1-H Gun";
global.arrayWeapons[2,3] = "35-60 Damage";
global.arrayWeapons[2,4] = "It's high noon.";
global.arrayWeapons[2,5] = global.colRare;
global.arrayWeapons[2,6] = "+5 Strength";
global.arrayWeapons[2,7] = "+3 Agility";
global.arrayWeapons[2,8] = "Requires Level 15";
global.arrayWeapons[2,9] = noone;

// Epic Weapon
global.arrayWeapons[3,0] = 2;
global.arrayWeapons[3,1] = "Epic Axe";
global.arrayWeapons[3,2] = "2-H Axe";
global.arrayWeapons[3,3] = "80-115 Damage";
global.arrayWeapons[3,4] = "That first battleground is always the best.";
global.arrayWeapons[3,5] = global.colEpic;
global.arrayWeapons[3,6] = "+15 Strength";
global.arrayWeapons[3,7] = "-2 Agility";
global.arrayWeapons[3,8] = "Requires Level 30";
global.arrayWeapons[3,9] = noone;
/*
// Legendary Weapon
global.arrayWeapons[4,0] = sprLegendary;
global.arrayWeapons[4,1] = "Legendary Axe";
global.arrayWeapons[4,2] = "2-H Axe";
global.arrayWeapons[4,3] = "300-565 Damage";
global.arrayWeapons[4,4] = "You will always remember your first raid.";
global.arrayWeapons[4,5] = global.colLegendary;
global.arrayWeapons[4,6] = "+60 Strength";
global.arrayWeapons[4,7] = "+20 Agility";
global.arrayWeapons[4,8] = "Requires Level 40";

// Artifact Weapon
global.arrayWeapons[5,0] = sprArtifact;
global.arrayWeapons[5,1] = "Artifact Axe";
global.arrayWeapons[5,2] = "2-H Axe";
global.arrayWeapons[5,3] = "900-1150 Damage";
global.arrayWeapons[5,4] = "You are recognized for your valor. The king grants you treasure room access!";
global.arrayWeapons[5,5] = global.colArtifact;
global.arrayWeapons[5,6] = "+200 Strength";
global.arrayWeapons[5,7] = "+100 Defense";
global.arrayWeapons[5,8] = "Requires Level 60";


/// Swords
// Common Weapon
global.arrayWeapons[6,0] = sprSword_common;
global.arrayWeapons[6,1] = "Basic Sword";
global.arrayWeapons[6,2] = "1-H Sword";
global.arrayWeapons[6,3] = "2-8 Damage";
global.arrayWeapons[6,4] = "A basic axe given to peons.";
global.arrayWeapons[6,5] = global.colCommon;
global.arrayWeapons[6,6] = "";
global.arrayWeapons[6,7] = "";
global.arrayWeapons[6,8] = "Requires Level 1";

// Uncommon Weapon
global.arrayWeapons[7,0] = sprSword_uncommon;
global.arrayWeapons[7,1] = "Uncommon Sword";
global.arrayWeapons[7,2] = "1-H Sword";
global.arrayWeapons[7,3] = "16-23 Damage";
global.arrayWeapons[7,4] = "Your first questing reward.";
global.arrayWeapons[7,5] = global.colUncommon;
global.arrayWeapons[7,6] = "+1 Attack Speed";
global.arrayWeapons[7,7] = "";
global.arrayWeapons[7,8] = "Requires Level 5";

// Rare Weapon
global.arrayWeapons[2,0] = sprSword_rare;
global.arrayWeapons[2,1] = "Rare Sword";
global.arrayWeapons[2,2] = "2-H Sword";
global.arrayWeapons[2,3] = "28-75 Damage";
global.arrayWeapons[2,4] = "You defeated the awesome ogre boss!";
global.arrayWeapons[2,5] = global.colRare;
global.arrayWeapons[2,6] = "+5 Strength";
global.arrayWeapons[2,7] = "-1 Agility";
global.arrayWeapons[2,8] = "Requires Level 15";

// Epic Weapon
global.arrayWeapons[8,0] = sprSword_epic;
global.arrayWeapons[8,1] = "Epic Sword";
global.arrayWeapons[8,2] = "2-H Sword";
global.arrayWeapons[8,3] = "92-126 Damage";
global.arrayWeapons[8,4] = "That first battleground is always the best.";
global.arrayWeapons[8,5] = global.colEpic;
global.arrayWeapons[8,6] = "+15 Strength";
global.arrayWeapons[8,7] = "-2 Agility";
global.arrayWeapons[8,8] = "Requires Level 30";

// Legendary Weapon
global.arrayWeapons[9,0] = sprSword_legendary;
global.arrayWeapons[9,1] = "Legendary Sword";
global.arrayWeapons[9,2] = "2-H Sword";
global.arrayWeapons[9,3] = "280-480 Damage";
global.arrayWeapons[9,4] = "You will always remember your first raid.";
global.arrayWeapons[9,5] = global.colLegendary;
global.arrayWeapons[9,6] = "+85 Strength";
global.arrayWeapons[9,7] = "+40 Agility";
global.arrayWeapons[9,8] = "Requires Level 40";

// Artifact Weapon
global.arrayWeapons[10,0] = sprSword_artifact;
global.arrayWeapons[10,1] = "Artifact Sword";
global.arrayWeapons[10,2] = "2-H Sword";
global.arrayWeapons[10,3] = "930-1250 Damage";
global.arrayWeapons[10,4] = "You are recognized for your valor. The king grants you treasure room access!";
global.arrayWeapons[10,5] = global.colArtifact;
global.arrayWeapons[10,6] = "+200 Strength";
global.arrayWeapons[10,7] = "+100 Agility";
global.arrayWeapons[10,8] = "Requires Level 60";

*/


