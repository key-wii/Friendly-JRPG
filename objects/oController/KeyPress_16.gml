/// @description DEBUG Go to Overworld Room
if (room == RoomCombat) {
	movedRoom = true;
	alarm_set(0, 80);
	room_goto(RoomOverworld1);
}
