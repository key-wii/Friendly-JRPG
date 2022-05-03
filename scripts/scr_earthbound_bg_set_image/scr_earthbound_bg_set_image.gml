/// @desc scr_earthbound_bg_set_image(instance_id, sprite, subimage, alpha, blend, tiled)
/// @param instance_id
/// @param sprite
/// @param subimage
/// @param alpha
/// @param blend
/// @param tiled
function scr_earthbound_bg_set_image() {

	/*-----------------------------------------------------------------------------
	INFO:
	-------------------------------------------------------------------------------
	This script is part of the earthbound-background-asset.
	It can be called from any other object - like a controller object.
	It can only be called after creating an earthbound-background-instance with
	scr_earthbound_bg_create().

	Check the note "Earthbound Backgrounds - Manual" for more general information
	on this asset.

	It will set up the sprite and and its properties of a previously created 
	earthbound-background-instance.


	-------------------------------------------------------------------------------
	ARGUMENTS:
	-------------------------------------------------------------------------------
	instance_id		real	the instance id of the earthbound-background-instance
							previously created with scr_earthbound_bg_create()

	sprite			real	the sprite used for this earthbound-background
							sets sprite_index
							the sprite has to be on its own texture page
							most likely best if the sprites origin is middle-centre

	subimage		real	the subimage within that sprite
							= image_index

	alpha			real	0 <= alpha <= 1
							the alpha value the sprite should be drawn with
							= image_alpha

	blend			$BBGGRR	the colour the image should be multiplied with
							= image_blend

	tiled			boolean	true: draw the image tiled
							false: draw the image once


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
		scr_earthbound_bg_set_image(layer_1, spr_diamonds, 0, 0.5, $FF88FF, true);
	
	This will:
	- create an earthbound-background-instance,
	- sets its sprite to "spr_diamonds",
	- subimage to 0,
	- alpha to 50%,
	- blend colour to a light magenta and
	- will draw that sprite tiled filling (application) the surface.

	-----------------------------------------------------------------------------*/

	with (argument[0]) {
		sprite_index		= argument[1]; // needs to be on a separate texture page
		image_index			= argument[2];
		image_alpha			= argument[3];
		image_blend			= argument[4];
		tiled				= argument[5];
	}



}
