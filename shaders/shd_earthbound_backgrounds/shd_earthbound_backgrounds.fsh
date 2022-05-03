//
// eartchbound-like fragment shader
//
varying vec2		v_vTexcoord;
varying vec4		v_vColour;

uniform sampler2D	col_ramp_tex;
uniform vec3		col_ramp;
uniform float		ramp_col_mix;
uniform vec3		sin_wave_x;
uniform vec3		sin_wave_y;
uniform vec3		sin_stretch_x;
uniform vec3		sin_stretch_y;
uniform vec2		view_size; 
uniform float		tiled;



#define	col_ramp_phase		col_ramp.x
#define	col_ramp_txl_h		col_ramp.y
#define	col_ramp_row		col_ramp.z

#define sin_wave_x_phase	sin_wave_x.x
#define sin_wave_x_len		sin_wave_x.y
#define sin_wave_x_amp		sin_wave_x.z
#define sin_wave_y_phase	sin_wave_y.x
#define sin_wave_y_len		sin_wave_y.y
#define sin_wave_y_amp		sin_wave_y.z

#define sin_stretch_x_phase	sin_stretch_x.x
#define sin_stretch_x_len	sin_stretch_x.y
#define sin_stretch_x_amp	sin_stretch_x.z
#define sin_stretch_y_phase	sin_stretch_y.x
#define sin_stretch_y_len	sin_stretch_y.y
#define sin_stretch_y_amp	sin_stretch_y.z

#define view_w				view_size.x
#define view_h				view_size.y


void main() {
	// ---------------------------------------------------------------------------
	// OFFSET
	// ---------------------------------------------------------------------------
	
	// wave: ---------------------------------------------------------------------
	vec2 base_coord		= vec2(		sin(sin_wave_x_phase + gl_FragCoord.y / view_h * sin_wave_x_len) * sin_wave_x_amp,
									sin(sin_wave_y_phase + gl_FragCoord.x / view_w * sin_wave_y_len) * sin_wave_y_amp);
	// stretch: ------------------------------------------------------------------
	base_coord			+= vec2(	(sin(sin_stretch_x_phase + gl_FragCoord.x / view_w * sin_stretch_x_len) * 0.5 + 0.5) * sin_stretch_x_amp,
									(sin(sin_stretch_y_phase + gl_FragCoord.y / view_h * sin_stretch_y_len) * 0.5 + 0.5) * sin_stretch_y_amp) + v_vTexcoord;
	// tiled: fract / non-tiled: clamp: ------------------------------------------
	base_coord			= mix(clamp(base_coord, 0.0, 1.0), fract(base_coord), tiled);
	
	// ---------------------------------------------------------------------------
	// COLOUR
	// ---------------------------------------------------------------------------
	vec4 base_col	= texture2D(gm_BaseTexture, base_coord);
	vec3 ramp_col	= texture2D(col_ramp_tex, vec2(fract(base_col.r + col_ramp_phase) * (1.0 - col_ramp_txl_h) + col_ramp_txl_h * 0.5, (col_ramp_row + 0.5) * col_ramp_txl_h)).rgb;
	vec4 out_col	= vec4(mix(base_col.rgb, ramp_col, ramp_col_mix), base_col.a);
	
	// ---------------------------------------------------------------------------
	// OUTPUT
	// ---------------------------------------------------------------------------
	gl_FragColor	= v_vColour * out_col;
}

