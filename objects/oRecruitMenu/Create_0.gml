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
		ds_list_add(commands, com0, com1);
		if (global.turns > 1) {
			com2 = ["Lullaby", command_lullaby];
			ds_list_add(commands, com2);
		}
		break;
	case "Puppet": 
		
		break;
}

clicking = ds_list_create();
for (var i = 0; i < ds_list_size(commands); i++) ds_list_add(clicking, false);
