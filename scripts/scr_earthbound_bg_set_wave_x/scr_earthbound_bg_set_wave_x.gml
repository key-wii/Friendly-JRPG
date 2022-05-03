/// @desc scr_earthbound_bg_set_wave_x(instance_id, speed, length, amplitude, phase)
/// @param instance_id
/// @param speed
/// @param length
/// @param amplitude
/// @param phase
function scr_earthbound_bg_set_wave_x() {

	/*-----------------------------------------------------------------------------
	INFO:
	-------------------------------------------------------------------------------
	This script is part of the earthbound-background-asset.
	It can be called from any other object - like a controller object.
	It can only be called after creating an earthbound-background-instance with
	scr_earthbound_bg_create().

	Check the note "Earthbound Backgrounds - Manual" for more general information
	on this asset.

	It will distort the image applying a sine wave to the x coordinates.


	-------------------------------------------------------------------------------
	ARGUMENTS:
	-------------------------------------------------------------------------------
	instance_id			real	the instance id of the earthbound-background-
								instance previously created with
								scr_earthbound_bg_create()
							
	speed				real	The speed the sine wave moves up or down
								0: just distortion, no movement in it
								1: quite slow, relaxing
								2: quite fast already
								negative: move the other way

	length				real	the sine waves length
								the smaller this is, the longer the wave will be
								5: is a good starting point

	amplitude			real	the amount of distortion
								0: no distortion
								0.1: quite extreme already
								0.01: a good starting point
								negative: distort the other way

	phase				real	In case you got two background layers and each
								using and x-wave distortion. This let's the waves
								start at different points so they don't distort 
								in sync


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
		scr_earthbound_bg_set_wave_x(layer_1, 1, 5, 0.01, 0);
	
	This will:
	- create an earthbound-background-instance,
	- sets its sprite to "spr_diamonds",
	- sets a relaxing, slow, small x-wave distortion

	-----------------------------------------------------------------------------*/

	with (argument[0]) {
		sin_wave_x_spd		= argument[1];
		sin_wave_x_len		= argument[2];
		sin_wave_x_amp		= argument[3];
		sin_wave_x_phase	= argument[4];
	}



}
