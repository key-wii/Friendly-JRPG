/// @description DEBUG Go to Overworld Roomif (room == RoomCombat) {
	movedRoom = true;
	alarm_set(0, 80);
	room_goto(RoomOverworld1);
}
