/// @description DEBUG Go to Combat Room
if (room == RoomOverworld1) {
	movedRoom = true;
	alarm_set(0, 80);
	global.nextAttack = tAttackPatternRad1;
	combat_start();
}
