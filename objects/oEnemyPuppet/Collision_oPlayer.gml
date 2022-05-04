/// @description Initiate combat
global.enemy = "Puppet";
global.enemySpr = sprPuppetCombat;
global.boxCol = "P";
global.nextAttack = tAttackPatternPuppet1;
global.textboxString =
	"Puppet bumps\n" + "into you";
ds_list_clear(global.combatDialogue);
ds_list_add(global.combatDialogue,
	"Puppet attacks you",
	"Puppet seems\n" + "apathetic to\n" + "the situation",
	"You feel uneasy");
global.flavorText =
	"Puppet stares blankly\n" + "nowhere in particular";
global.dialogueIndex = 0;
combat_start();
instance_destroy();
