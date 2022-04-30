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
		com0 = ["Slap", command_text];
		com1 = ["Shout", command_text];
		ds_list_add(commands, com0, com1);
		break;
	case "Puppet": 
		
		break;
}
clicking = ds_list_create();
for (var i = 0; i < ds_list_size(commands); i++) ds_list_add(clicking, false);
