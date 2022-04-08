function combat_start(){
	//pause
	room_speed = 60;
	var width = surface_get_width(application_surface),
	height = surface_get_height(application_surface);
	global.ScreenShot = sprite_create_from_surface(application_surface, 0, 0, width, height, false, false, 0, 0);

	room_persistent = true;
	audio_pause_all();
	//part_system_automatic_update(global.P_System, false);
	/*var pauseSnd = true;
	if (in a room where overworld music is same as combat) pauseSnd = false;
	if (pauseSnd) audio_pause_sound(global.bgm);*/
	global.CurrentRoom = room;

	room_goto(RoomCombat);
}