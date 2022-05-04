/// @description spawn bullets
with (oEnemyTurn) {
	growSpd = 6;
	shrinkSpd = 12;
	duration = 140;
	box_w = 280;
	box_h = 280;
}


// this attack pattern spawns 3 bullets, spread out above the player, 
// which shoot toward the player after 1 second.
var xx = room_width / 2 - 300;
var yy = 300;

for (i = 0; i < 3; i++)
{
	currentBullet = instance_create_layer(xx + (i * 300), yy, "Above", oBulletRad);
	with (currentBullet)
	{
		direction = point_direction(x, y, oPlayerCombat.x, oPlayerCombat.y);
		speed = 0;
	}
	attackArray[i] = currentBullet;
}

global.nextAttack = tAttackPatternPuppet2;
