/// @description create petal bullet

// this attack pattern spawns 5 bullets, spread out above the player, 
// which shoot toward the player after 1 second.
var xx = 300;
var yy = 300;
var bull = instance_create_layer(xx + (i * 100), yy, "Above", oPetal);
with (bull)
{
	direction = 90;
	speed = 20;
}

timeline_position = 5;
