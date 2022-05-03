/// @desc scr_earthbound_bg_create(x, y, layer_id)
/// @param x
/// @param y
/// @param layer_id
function scr_earthbound_bg_create() {

	/*-----------------------------------------------------------------------------
	INFO:
	-------------------------------------------------------------------------------
	This script is part of the earthbound-background-asset.
	It can be called from any other object - like a controller object.

	Check the note "Earthbound Backgrounds - Manual" for more general information
	on this asset.

	It creates an instance of obj_earthbound_backgrounds and returns the instances ID.

	The new earthbound-background-instance will do nothing interesting yet though.
	To change the image, add movement, deformation and colour, you need to call 
	some of the setter scripts first.

	The returned instance ID can be used to tell the setter scripts wich instance
	you want to change and can be used to remove background layers when not needed
	anymore. So it's important to store that ID.


	-------------------------------------------------------------------------------
	ARGUMENTS:
	-------------------------------------------------------------------------------
	x				real	x-position in room-coordinates of the new instance

	y				real	y-position in room-coordinates of the new instance

	layer_id		real	the layer id you want the new instance to be placed at


	-------------------------------------------------------------------------------
	RETURN:
	-------------------------------------------------------------------------------
	instance id		real	the id of the newly created earthbound-background-
							instance
						
						
	-------------------------------------------------------------------------------
	EXAMPLE:
	-------------------------------------------------------------------------------
	In a controller objects event:
	------------------------------

		layer_1 = scr_earthbound_bg_create(room_width * 0.5, room_height * 0.5, layer);
	
	This will:
	- create an earthbound-background-instance in the centre of the room,
	- place it on the same layer as the controller instance and
	- store the id of the new earthbound-background-instance in the controllers
	  variable "layer_1"

	-----------------------------------------------------------------------------*/

	return instance_create_layer(argument[0], argument[1], argument[2], obj_earthbound_backgrounds);



}
