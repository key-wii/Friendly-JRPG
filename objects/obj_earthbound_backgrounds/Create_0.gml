/// @description Init

// ----------------------------------------------------------------------------
// INFO
// ----------------------------------------------------------------------------
// Do not place this object in a room manually. Instead create a controller
// object and call scr_earthbound_bg_create()
// Check the note "Earthbound Backgrounds - Manual" for more information.


// ----------------------------------------------------------------------------
// EFFECT PARAMETRS
// ----------------------------------------------------------------------------
image_index			= 0;
image_speed			= 0;
image_xscale		= 1;
image_yscale		= 1;
direction			= 0;
speed				= 0;
image_alpha			= 1;
image_blend			= c_white;
tiled				= false;
blendmode			= bm_normal;
texfilter_pattern	= true;
texfilter_col_ramp	= true;
texfilter_end		= false;

col_ramp_row		= 0;
col_ramp_spd		= 0; // cycles per second
col_ramp_phase		= 0;
col_ramp_mix_amount	= 0;

sin_wave_x_spd		= 0; // cycles per second
sin_wave_x_len		= 1;
sin_wave_x_amp		= 0;
sin_wave_x_phase	= 0;

sin_wave_y_spd		= 0; // cycles per second
sin_wave_y_len		= 1;
sin_wave_y_amp		= 0;
sin_wave_y_phase	= 0;

sin_stretch_x_spd	= 0; // cycles per second
sin_stretch_x_len	= 1;
sin_stretch_x_amp	= 0;
sin_stretch_x_phase	= 0;

sin_stretch_y_spd	= 0; // cycles per second
sin_stretch_y_len	= 1;
sin_stretch_y_amp	= 0;
sin_stretch_y_phase	= 0;


// ----------------------------------------------------------------------------
// VARIABLES
// ----------------------------------------------------------------------------
view_size			= [camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0])];


// ----------------------------------------------------------------------------
// SHADER
// ----------------------------------------------------------------------------
shader				= shd_earthbound_backgrounds;
u_col_ramp_tex		= shader_get_sampler_index(shader, "col_ramp_tex");
u_col_ramp			= shader_get_uniform(shader, "col_ramp");
u_col_ramp_mix		= shader_get_uniform(shader, "ramp_col_mix");
u_sin_wave_x		= shader_get_uniform(shader, "sin_wave_x");
u_sin_wave_y		= shader_get_uniform(shader, "sin_wave_y");
u_sin_stretch_x		= shader_get_uniform(shader, "sin_stretch_x");
u_sin_stretch_y		= shader_get_uniform(shader, "sin_stretch_y");
u_view_size			= shader_get_uniform(shader, "view_size");
u_tiled				= shader_get_uniform(shader, "tiled");
