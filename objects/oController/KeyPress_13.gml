/// @description DEBUG Go to Combat Room
if (room == RoomOverworld1) {
	global.nextAttack = tAttackPatternRad1;
	combat_start();
}
