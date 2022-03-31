// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_turn(){
	
	// probably throw in a text box with some dialogue real quick.
	show_debug_message("starting enemy turn"); // debug msg
	
	
	// attack the player...
	
	
	show_debug_message(timeline_running);
	timeline_index = tAttackPatternRad1;
	timeline_position = 0;
	timeline_speed = 1;
	timeline_running = true;
	show_debug_message(timeline_running);
	
	
}