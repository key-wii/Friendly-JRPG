/// @desc scr_earthbound_bg_set_scale(instance_id, xscale, yscale)
/// @param instance_id
/// @param xscale
/// @param yscale
function scr_earthbound_bg_set_scale() {

	/*-----------------------------------------------------------------------------
	INFO:
	-------------------------------------------------------------------------------
	This script is part of the earthbound-background-asset.
	It can be called from any other object - like a controller object.
	It can only be called after creating an earthbound-background-instance with
	scr_earthbound_bg_create().

	Check the note "Earthbound Backgrounds - Manual" for more general information
	on this asset.

	It will set the x- and y-scale of the background sprite.


	-------------------------------------------------------------------------------
	ARGUMENTS:
	-------------------------------------------------------------------------------
	instance_id			real	the instance id of the earthbound-background-
								instance previously created with
								scr_earthbound_bg_create()

	xscale				real	1: unscaled | > 1: upscaled | < 1: downscaled
								negative: flipped

	yscale				real	1: unscaled | > 1: upscaled | < 1: downscaled
								negative: flipped


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
		scr_earthbound_bg_set_scale(layer_1, 2, -2);
	
	This will:
	- create an earthbound-background-instance,
	- sets its sprite to "spr_diamonds",
	- double its width and height
	- flip the y axis

	-----------------------------------------------------------------------------*/
	with (argument[0]) {
		image_xscale	= argument[1];
		image_yscale	= argument[2];
	}



}
