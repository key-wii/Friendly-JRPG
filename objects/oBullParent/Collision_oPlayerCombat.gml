/// @description Deal damage
global.hp -= pow;
if (global.hp <= 0) room_goto(RoomDEAD);
instance_destroy();
