/// @desc scr_earthbound_bg_set_movement(instance_id, direction, speed)
/// @param instance_id
/// @param direction
/// @param speed
function scr_earthbound_bg_set_movement() {

	/*-----------------------------------------------------------------------------
	INFO:
	-------------------------------------------------------------------------------
	This script is part of the earthbound-background-asset.
	It can be called from any other object - like a controller object.
	It can only be called after creating an earthbound-background-instance with
	scr_earthbound_bg_create().

	Check the note "Earthbound Backgrounds - Manual" for more general information
	on this asset.

	It will set the movement of the background sprite by setting a direction and
	a speed in room dimensions.


	-------------------------------------------------------------------------------
	ARGUMENTS:
	-------------------------------------------------------------------------------
	instance_id			real	the instance id of the earthbound-background-
								instance previously created with
								scr_earthbound_bg_create()
							
	direction			real	direction in degrees. Sets in what the direction
								the earthbound-background-sprite scrolls

	speed				real	speed in room-units per frame (not delta-timed).
								Sets how fast the earthbound-background-sprite
								scrolls


	-------------------------------------------------------------------------------
	RETURN:
	-------------------------------------------------------------------------------
	N/A


	-------------------------------------------------------------------------------
	EXAMPLE:
	-------------------------------------------------------------------------------
	In a controller objects event:
	------------------------------

		layer_1 = scr_earthbound_bg_create(room_width * 0.5, room_height * 0.5, layer);
		scr_earthbound_bg_set_image(layer_1, spr_diamonds, 0, 1, $FFFFFF, true);
		scr_earthbound_bg_set_movement(layer_1, 90, 2);
	
	This will:
	- create an earthbound-background-instance,
	- sets its sprite to "spr_diamonds",
	- lets it scroll upwards (90 degeres)
	- at the speed of 2 room-units per frame

	-----------------------------------------------------------------------------*/
	with (argument[0]) {
		direction			= argument[1];
		speed				= argument[2];
	}



}
