/// @description just set box values
with (oEnemyTurn) {
	growSpd = 6;
	shrinkSpd = 12;
	duration = 520;
	box_w = 800;
	box_h = 120;
}


x_shift = 0;

minDir = 90 - 90;
maxDir = 90 + 90;
dir = minDir;
dirPlus = true;

global.nextAttack = tAttackPatternPuppet3;
