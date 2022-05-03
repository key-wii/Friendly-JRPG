/// @description

gpu_set_texfilter(texfilter_pattern);
gpu_set_texfilter_ext(u_col_ramp_tex, texfilter_col_ramp);
gpu_set_blendmode(blendmode);

shader_set(shader);
	texture_set_stage(u_col_ramp_tex, col_ramp_tex);
	shader_set_uniform_f(u_col_ramp, col_ramp_phase, col_ramp_txl_h, col_ramp_row);
	shader_set_uniform_f(u_col_ramp_mix, col_ramp_mix_amount);
	shader_set_uniform_f(u_sin_wave_x, sin_wave_x_phase, sin_wave_x_len, sin_wave_x_amp);
	shader_set_uniform_f(u_sin_wave_y, sin_wave_y_phase, sin_wave_y_len, sin_wave_y_amp);
	shader_set_uniform_f(u_sin_stretch_x, sin_stretch_x_phase, sin_stretch_x_len, sin_stretch_x_amp);
	shader_set_uniform_f(u_sin_stretch_y, sin_stretch_y_phase, sin_stretch_y_len, sin_stretch_y_amp);
	shader_set_uniform_f_array(u_view_size, view_size);
	shader_set_uniform_f(u_tiled, tiled);
	if (tiled) 
		draw_sprite_tiled_ext(	sprite_index, image_index,
								x - sprite_xoffset, y - sprite_yoffset,
								image_xscale, image_yscale,
								image_blend, image_alpha);
	else
		draw_sprite_ext(		sprite_index, image_index,
								x, y,
								image_xscale, image_yscale, 0,
								image_blend, image_alpha);
	
shader_reset();

gpu_set_blendmode(bm_normal);
gpu_set_texfilter(texfilter_end);
