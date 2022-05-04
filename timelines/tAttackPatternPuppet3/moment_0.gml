/// @description spawn bullets
with (oEnemyTurn) {
	growSpd = 12;
	shrinkSpd = 12;
	duration = 160;
	box_w = 280;
	box_h = 280;
}


// this attack pattern spawns 5 bullets, spread out above the player, 
// which shoot toward the player after ~1 second.
var xx = room_width / 2 - 200;
var yy = 300;

for (i = 0; i < 5; i++) 
{
	
	currentBullet = instance_create_layer(xx + (i * 100), yy, "Above", oBulletRad);
	with (currentBullet)
	{
		direction = point_direction(x, y, oPlayerCombat.x, oPlayerCombat.y);
		speed = 0;
	}
	attackArray[i] = currentBullet;
	show_debug_message("created bullet");
}

global.nextAttack = tAttackPatternPuppet1;
