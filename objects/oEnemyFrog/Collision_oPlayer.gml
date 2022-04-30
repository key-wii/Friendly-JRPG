/// @description Initiate 
global.enemy = "Frog";
global.enemySpr = sprFrogCombat;
global.boxCol = "G";
global.nextAttack = tAttackPatternRad1;
global.textboxString =
	"Glow Frog hops...\n" +
	"Backspace hops...\n" +
	"Stumbles into battle???";
combat_start();
instance_destroy();
