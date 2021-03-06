window_set_cursor(cr_none);
justReset = savedata_get("DEBUG", "reset", false);
savedata_set("DEBUG", "reset", false);
alarm_set(0, 80);
deleteSave = false;
movedRoom = false;

instance_create_layer(x, y, layer, oControllerAudio);
UIcolor = c_white;
UIcolor2 = c_white;

global.maxHp = 10;
global.hp = global.maxHp;

global.enemySpr = sprFrogCombat;
global.boxCol = "G";
global.combatDialogue = ds_list_create();
global.dialogueIndex = 0;
global.noInput = false;

global.song = audio_play_sound(msc_overworld, false, true);
room_goto(RoomOverworld1);
