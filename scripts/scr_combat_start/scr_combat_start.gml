function combat_start(){
	//pause
	room_speed = 60;
	var width = surface_get_width(application_surface),
	height = surface_get_height(application_surface);
	global.ScreenShot = sprite_create_from_surface(application_surface, 0, 0, width, height, false, false, 0, 0);

	room_persistent = true;
	audio_pause_all();
	global.CurrentRoom = room;

	room_goto(RoomCombat);
}