justReset = savedata_get("DEBUG", "reset", false);
savedata_set("DEBUG", "reset", false);
alarm_set(0, 80);
deleteSave = false;
movedRoom = false;

instance_create_layer(x, y, layer, oControllerAudio);
UIcolor = c_white;

global.maxHp = 5;
global.hp = global.maxHp;

room_goto(RoomOverworld1);