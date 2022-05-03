global.victory = false;
global.turn = 0;
global.turns = 1;

create_player_turn_ui(global.textboxString);
/*textbox.fullText = "I have accepted after many defeats and trials that\n" +
	"I am the chosen one to bring down the dark lord.\n" +
	"I have accepted the limits of my morale and given up.\n" +
	"I have accepted my defeat.\n" +
	"For those of you who are still giving it your all good luck,\n" +
	"hell awaits you up ahead.";*/

bg = scr_earthbound_bg_create(room_width / 2, room_height / 2, "Background");
//scr_earthbound_bg_set_gpu(bg, bm_normal, true, true, true);
switch(global.enemy) {
	case "Frog":
		audio_play_sound(snd_battle_start, false, false);
		scr_earthbound_bg_set_position(bg, -200, -200);
		scr_earthbound_bg_set_image(bg, bg_a2, 0, .8, c_white, true);
		scr_earthbound_bg_set_scale(bg, 5, 5);
		scr_earthbound_bg_set_movement(bg, 270, .2);
		scr_earthbound_bg_set_wave_x(bg, .25, 5, 0.01, 0);
		scr_earthbound_bg_set_col_ramp(bg, spr_demo_col_ramp, 0, 0, 0, 0);
		break;
	case "Puppet":
		audio_play_sound(snd_battle_start2, false, false);
		scr_earthbound_bg_set_position(bg, 0, 0);
		scr_earthbound_bg_set_image(bg, bg_b2, 0, .3, c_white, true);
		scr_earthbound_bg_set_scale(bg, 1, 1);
		scr_earthbound_bg_set_movement(bg, 270, .2);
		scr_earthbound_bg_set_col_ramp(bg, spr_demo_col_ramp, 0, .1, 0, 2);
		break;
}
