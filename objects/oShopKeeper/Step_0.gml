// change shopkeep sprite to indicate interactability
if (point_distance(x, y - sprite_height / 2, oPlayer.x, oPlayer.y) < 150)
{
    playerNear = true;
	switch (rot_r) {
		case true:
			rot += .1;
			if (rot >= 3) rot_r = false;
			break;
		case false:
			rot -= .1;
			if (rot <= -3) rot_r = true;
			break;
	}
	switch (y_up) {
		case true:
			y_adjust -= .2;
			if (y_adjust <= -3) y_up = false;
			break;
		case false:
			y_adjust += .2;
			if (y_adjust >= 3) y_up = true;
			break;
	}
}
else
{
	playerNear = false;
	y_adjust = 0;
	y_up = false;
	rot = 0;
	rot_r = false;
}
