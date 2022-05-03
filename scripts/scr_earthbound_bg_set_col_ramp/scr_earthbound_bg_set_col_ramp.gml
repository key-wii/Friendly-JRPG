/// @desc scr_earthbound_bg_set_col_ramp(instance_id, sprite, row, speed, phase, mix_amount)
/// @param instance_id
/// @param sprite
/// @param row
/// @param speed
/// @param phase
/// @param mix_amount
function scr_earthbound_bg_set_col_ramp() {

	/*-----------------------------------------------------------------------------
	INFO:
	-------------------------------------------------------------------------------
	This script is part of the earthbound-background-asset.
	It can be called from any other object - like a controller object.
	It can only be called after creating an earthbound-background-instance with
	scr_earthbound_bg_create().

	Check the note "Earthbound Backgrounds - Manual" for more general information
	on this asset.

	With this script you can add a changing-colour-effect to the background sprite.

	- The shader takes a sample from the background sprite set up with
	  scr_earthbound_bg_set_image() and checks the brightness of its red channel.
	- Then it takes a sample from the colour-ramp sprite based on the brightness of
	  the frist sample.
	  -> If the sample from the background sprites red channel is 0, it will take a
	     sample from the left most texel on the colour-ramp sprite.
	  -> If the sample from the background sprites red channel is 1, it will take a
	     sample from the right most texel on the colour-ramp sprite.
	  -> If the sample from the background sprites red channel is 0.5, it will take
	     a sample from the centre of the colour-ramp sprite.
	- the colour-ramp sprite has to be square and on a seperate texture page, but
	  it can be rather small like 4x or 8x8 pixels. Since it's square but you only
	  need one row of pixels to create a colour-ramp, you can set up multiple
	  colour-ramps per solour-ramp sprite and set up which row to use.
	- This illustration shows a colour-ramp sprite with 4x4 pixels:

	     colour-ramp from black to white
	     ______________/\______________
	    /                               \
		+-------+-------+-------+-------+  \
		|  0/0  |  0/1  |  0/2  |  0/3  |   |
		| black | light | dark  | white |   |
		|       | gray  | gray  |       |   |
		+-------+-------+-------+-------+   |
		|  1/0  |  1/1  |  1/2  |  1/3  |   |
		|  red  | green | blue  |  red  |   |
		|       |       |       |       |   |
		+-------+-------+-------+-------+    > ramp rows from 0 to 3
		|  2/0  |  2/1  |  2/2  |  2/3  |   |
		| black | black | black | black |   |
		|       |       |       |       |   |
		+-------+-------+-------+-------+   |
		|  3/0  |  3/1  |  3/2  |  3/3  |   |
		| black | black | black | black |   |
		|       |       |       |       |   |
		+-------+-------+-------+-------+  /

	  - Row 0 starts black, get's brighter, then darker again
	    and ends on white
		-> If the red value of the pixel on the background sprite is 0, then the 
		   shader will draw black
		-> If the red value of the pixel on the background sprite is 1, then the
		   shader will draw white
		-> If the red value of the pixel on the background sprite is 0.33, then the
		   shader will draw light gray
		-> If the red value of the pixel on the background sprite is 0.5, then the
		   shader will draw an even mix of light gray and dark gray
	  - Row 1 starts red, passes green and blue and ends on red again
		-> If the red value of the pixel on the background sprite is 0, then the 
		   shader will draw red
		-> If the red value of the pixel on the background sprite is 1, then the
		   shader will draw red as well
		-> If the red value of the pixel on the background sprite is 0.33, then the
		   shader will draw green
		-> If the red value of the pixel on the background sprite is 0.5, then the
		   shader will draw an even mix of green and blue, so a dark cyan
	  - Rows 2 & 3 are just black
	    -> No matter what the red value of the pixel on the background sprite is,
		   the shader will always draw black

	- But you can also let the shader cycle through the colour ramp. With row 1 in
	  the illustration above, that means a bright red pixel on the background
	  sprite might start being drawn red, then turns to green, then blue and then 
	  red again.

	- And you can decide if and by how much the colour ramp should be mixed with
	  the colour of the background sprite.
  

	-------------------------------------------------------------------------------
	ARGUMENTS:
	-------------------------------------------------------------------------------
	instance_id		real	the instance id of the earthbound-background-instance
							previously created with scr_earthbound_bg_create()
							
	sprite			real	the colour-ramp sprite
							the sprite has to be on its own texture page but can be
							rather small. Even 4x4 pixels is ok
						
	row				real	The row of the colour-ramp on the colour-ramp sprite

	speed			real	The speed with which tghe colour-ramp cycles through
							its colours
							0: no cycle
							1: pretty fast already
						
	phase			real	In case you got two background layers and each cycling
							through the same colour-ramp. This let's the cycle
							start at different points so they don't cycle through 
							exactly the same colours
						
	mix_amount		real	How much of the colour-ramp colour or the background
							sprite colour should show
							0: just the background sprites colour
							1: just the colour-ramp sprites colour
							0.5: an even mix of both sprites colours


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
		scr_earthbound_bg_set_col_ramp(layer_1, spr_col_ramp, 1, 0.25, 0, 0.75);
	
	This will:
	- create an earthbound-background-instance,
	- sets its sprite to "spr_diamonds",
	- picks row 1 from the colour-ramp sprite "spr_col_ramp" as colour-ramp,
	- let's the colour-ramp cycle at a slow speed starting at phase 0 and
	- mixes the 75% or the colour-ramps colour with 25% of the background sprites
	  colour

	-----------------------------------------------------------------------------*/

	with (argument[0]) {
		col_ramp_spr		= argument[1];
		col_ramp_row		= argument[2];
		col_ramp_spd		= argument[3];
		col_ramp_phase		= argument[4];
		col_ramp_mix_amount = argument[5];
	
		col_ramp_tex		= sprite_get_texture(col_ramp_spr, 0);
		col_ramp_txl_h		= 1  / sprite_get_height(col_ramp_spr);
	}



}
