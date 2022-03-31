/// @description spawn bullets
// this attack pattern spawns 5 bullets, spread out above the player, 
// which shoot toward the player after 1 second.

posx = 300;
posy = 300;

show_debug_message("started loop");

for (i=0; i<5; i++) 
{
	
	currentBullet = instance_create_layer(posx + (i * 100), posy, layer, oBulletRad);
	with (currentBullet)
	{
		
		direction = point_direction(x, y, oPlayerCombat.x, oPlayerCombat.y);
		speed = 0;
	}
	attackArray[i] = currentBullet;
	show_debug_message("created bullet");
}
