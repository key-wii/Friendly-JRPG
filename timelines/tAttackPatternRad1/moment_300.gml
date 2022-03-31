/// @description destroys remaining bullets

for (i = 4; i >=0; i--) 
{
	currentBullet = attackArray[i];
	with (currentBullet) 
	{
		instance_destroy();
	}
}