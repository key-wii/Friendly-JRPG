/// @description update

// ----------------------------------------------------------------------------
// UPDATE
// ----------------------------------------------------------------------------
col_ramp_phase		+= col_ramp_spd   * delta_time / 1000000;

sin_wave_x_phase	+= sin_wave_x_spd * delta_time / 1000000 * 3.14;
sin_wave_y_phase	+= sin_wave_y_spd * delta_time / 1000000 * 3.14;

sin_stretch_x_phase	+= sin_stretch_x_spd * delta_time / 1000000 * 3.14;
sin_stretch_y_phase	+= sin_stretch_y_spd * delta_time / 1000000 * 3.14;
