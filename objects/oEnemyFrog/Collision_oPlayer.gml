/// @description Initiate 
global.enemy = "Frog";
global.enemySpr = sprFrogCombat;
global.boxCol = "G";
global.nextAttack = tAttackPatternFrog1;
global.textboxString =
	"Glow Frog hops...\n" +
	"Backwards hops...\n" +
	"Stumbles into battle???";
ds_list_clear(global.combatDialogue);
ds_list_add(global.combatDialogue,
	"Glow Frog audibly yawns",
	"\"It's too bright...\"",
	"\"Uuuuuuuuuuugggggggggggggggggghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\"");
global.flavorText = "\"I don't need coffee...\"";
global.dialogueIndex = 0;
combat_start();
instance_destroy();
