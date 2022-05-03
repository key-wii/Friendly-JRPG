/// @desc scr_earthbound_bg_set_position(instance_id, x, y)
/// @param instance_id
/// @param x
/// @param y
function scr_earthbound_bg_set_position() {

	/*-----------------------------------------------------------------------------
	INFO:
	-------------------------------------------------------------------------------
	This script is part of the earthbound-background-asset.
	It can be called from any other object - like a controller object.
	It can only be called after creating an earthbound-background-instance with
	scr_earthbound_bg_create().

	Check the note "Earthbound Backgrounds - Manual" for more general information
	on this asset.

	It will change/set the position of a previously created earthbound-background-
	instance.

	Usually this script won't be needed because you can also set an instances 
	movement with the script scr_earthbound_bg_set_movement(). But it can be used
	to let the background sprite follow another instance like the player.


	-------------------------------------------------------------------------------
	ARGUMENTS:
	-------------------------------------------------------------------------------
	instance_id		real	the instance id of the earthbound-background-instance
							previously created with scr_earthbound_bg_create()

	x				real	x-position in room-coordinates of the new instance

	y				real	y-position in room-coordinates of the new instance


	-------------------------------------------------------------------------------
	RETURN:
	-------------------------------------------------------------------------------
	N/A


	-------------------------------------------------------------------------------
	EXAMPLE:
	-------------------------------------------------------------------------------
	In a controller objects create event:
	-------------------------------------

		layer_1 = scr_earthbound_bg_create(room_width * 0.5, room_height * 0.5, layer);
	
	In a controller objects step event:
	-------------------------------------
		scr_earthbound_bg_set_position(layer_1, obj_player.x, obj_player.y);
	
	This will:
	- create an earthbound-background-instance in the centre of the room,
	- and constantly set its position to the player objects position.

	-----------------------------------------------------------------------------*/

	with argument[0] {
		x = argument[1];
		y = argument[2];
	}


}
