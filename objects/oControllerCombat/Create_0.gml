global.victory = false;
global.turn = 0;

var _command_r = instance_create_layer(x, y, layer, oCommand);
with (_command_r) {
	fullText = "Recruit";
	dir = LEFT;
	image_speed = .8;
	image_index = 0;
	up = false;
	command = end_combat;
}
var _command_i = instance_create_layer(x, y, layer, oCommand);
with (_command_i) {
	//fullText = "Items";
	fullText = "Nothing";
	dir = RIGHT;
	image_speed = .8;
	image_index = 4;
	up = true;
	command = command_stall;
}
var _textbox = instance_create_layer(x, y, layer, oTextbox);
_textbox.fullText = "The skeleton appears!";
/*textbox.fullText = "I have accepted after many defeats and trials that\n" +
	"I am the chosen one to bring down the dark lord.\n" +
	"I have accepted the limits of my morale and given up.\n" +
	"I have accepted my defeat.\n" +
	"For those of you who are still giving it your all good luck,\n" +
	"hell awaits you up ahead.";*/