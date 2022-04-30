/// @description Initiate 
global.enemy = "Frog";
global.enemySpr = sprFrogCombat;
global.boxCol = "G";
global.nextAttack = tAttackPatternRad1;
global.textboxString =
	"Glow Frog hops...\n" +
	"Backwards hops...\n" +
	"Stumbles into battle???";
ds_list_add(global.combatDialogue,
	"Glow Frog audibly yawns",
	"\"It's too bright...\"",
	"\"Ughhhhhhhhhhhhhhhhhhhh\"");
global.flavorText = "\"No I don't need coffee\"";
global.dialogueIndex = 0;
combat_start();
instance_destroy();
