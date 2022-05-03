/// @desc scr_earthbound_bg_set_gpu(instance_id, blendmode, texfilter_pattern, texfilter_col_ramp, texfilter_end)
/// @param instance_id
/// @param blendmode
/// @param texfilter_pattern
/// @param texfilter_col_ramp
/// @param texfilter_end
function scr_earthbound_bg_set_gpu() {

	/*-----------------------------------------------------------------------------
	INFO:
	-------------------------------------------------------------------------------
	This script is part of the earthbound-background-asset.
	It can be called from any other object - like a controller object.
	It can only be called after creating an earthbound-background-instance with
	scr_earthbound_bg_create().

	Check the note "Earthbound Backgrounds - Manual" for more general information
	on this asset.

	It will set up gpu-states for a previously created earthbound-background-
	instance. This affects the texturefilter and the blend mode the sprite is 
	drawn with.


	-------------------------------------------------------------------------------
	ARGUMENTS:
	-------------------------------------------------------------------------------
	instance_id			real	the instance id of the earthbound-background-
								instance previously created with
								scr_earthbound_bg_create()

	blendmode			bm-type	the blend mode type the sprite should be drawn in.
								i.e. bm_normal, bm_add or bm_subtract
								Without calling this script, it will be "bm_normal".
								After the sprite is drawn, the blend mode will always
								automatically be set to "bm_normal" again.
							
	texfilter_pattern	boolean	sets if the sprite should be drawn filtered.
								true:  the background sprite is filtered
								false: the background sprite is not filtered
								Without calling this script, it will be "true"

	texfilter_col_ramp	boolean	sets if the colour ramp should be used filtered. For
								most games most likely "true"
								true:  the colour ramp sprite is filtered
								false: the colour ramp sprite is not filtered
								Without calling this script, it will be "true"

	texfilter_end		boolean	sets the filter after the earthbound-background is
								drawn. For pixel art games msot likely "false"
								true:  after the sprite is drawn, the filter is
									   turned on
								false: after the sprite is drawn, the filter is
									   turned off
								Without calling this script, it will be "false"


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
		scr_earthbound_bg_set_col_ramp(layer_1, spr_col_ramp, 0, 0.25, 0, 1);
		scr_earthbound_bg_set_gpu(layer_1, bm_add, true, true, false);
	
	This will:
	- create an earthbound-background-instance,
	- sets its sprite to "spr_diamonds",
	- add a colour ramp to the instance, 
	- set it up to be drawn in blend mode "bm_normal",
	- set it up to be drawn with the linear texture interpolation filter,
	- make sure the colour ramp samples are interpolated as well and
	- turn off the filter after drawing the sprite.

	-----------------------------------------------------------------------------*/

	with (argument[0]) {
		blendmode			= argument[1]; // needs to be on a separate texture page
		texfilter_pattern	= argument[2];
		texfilter_col_ramp	= argument[3];
		texfilter_end		= argument[4];
	}



}
