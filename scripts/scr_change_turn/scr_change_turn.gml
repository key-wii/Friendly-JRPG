function change_turn() {
	if (global.turn == 0) global.turn = 1;
	else if (global.turn == 1) global.turn = 0;
	
	instance_destroy(oTextbox);
	instance_destroy(oCommand);
	
	//create a new controller object for handling enemy turn logic
	
	if (global.turn == 1) with (oControllerCombat) enemy_turn();
}