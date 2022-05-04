event_inherited();
boxLeft = -50;
boxTop = h - box_h - space;

text_y = 0;
up = false;
wait = 0;

clicked = false;

commands = ds_list_create();
switch(global.enemy) {
	case "Frog": 
		com0 = ["Slap", command_slap];
		com1 = ["Shout", command_shout];
		com2 = ["Hug", command_hug];
		ds_list_add(commands, com0, com1, com2);
		if (global.turns > 1) {
			com3 = ["Lullaby", command_lullaby];
			ds_list_add(commands, com3);
		}
		break;
	case "Puppet": 
		com0 = ["Examine", command_examine];
		com1 = ["Hug", command_hug2];
		com2 = ["Console", command_console];
		ds_list_add(commands, com0, com1, com2);
		if (global.unlockCom1) {
			com2 = ["Rip Strings", command_rip];
			ds_list_add(commands, com2);
		}
		break;
}

clicking = ds_list_create();
for (var i = 0; i < ds_list_size(commands); i++) ds_list_add(clicking, false);
