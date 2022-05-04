/// @description set direction for bullets
with (oEnemyTurn) {
	growSpd = 8;
	shrinkSpd = 12;
	duration = 480;
	box_w = 800;
	box_h = 80;
}

x_shift = room_width / 8 - 25; //so bullets spawn on the frog's mouth

minDir = 90 - 80 + 10;
maxDir = 90 + 80 - 5;
dir = minDir;
dirPlus = true;

global.nextAttack = tAttackPatternFrog2;
