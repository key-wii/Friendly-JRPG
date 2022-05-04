/// @description create petal bullet

// this attack pattern spawns 5 bullets, spread out above the player, 
// which shoot toward the player after 1 second.
var yy = 300;
var bull = instance_create_layer(room_width / 2, yy, "Above", oPetal);
var ddir = dir;
with (bull)
{
	direction = ddir;
	image_angle = direction;
	speed = 20;
}
if (dirPlus) {
	dir += 30;
	if (dir > maxDir) {
		dirPlus = false;
		dir -= 15;
	}
} else {
	dir -= 30;
	if (dir < minDir) {
		dirPlus = true;
		dir += 15;
	}
}

timeline_position = 5;
