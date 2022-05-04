/// @description set direction for bullets
with (oEnemyTurn) {
	growSpd = 7;
	shrinkSpd = 12;
	duration = 480;
	box_w = 400;
	box_h = 300;
}

x_shift = room_width / 8 - 25; //so bullets spawn on the frog's mouth

minDir = 270 - 40;
maxDir = 270 + 40;
dir = minDir;
dirPlus = true;

global.nextAttack = tAttackPatternFrog1;
