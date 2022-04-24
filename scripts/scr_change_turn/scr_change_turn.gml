function change_turn() {
	if (global.turn == 0) {
		//Change to enemy turn
		global.turn = 1;
		instance_destroy(oTextbox);
		instance_destroy(oCommand);
		instance_create_layer(0, 0, "Above_BG", oEnemyTurn);
		with (oControllerCombat) start_attack(global.nextAttack);
	} else if (global.turn == 1) {
		//Change to player turn
		global.turn = 0;
		create_player_turn_ui(global.textboxString);
	}
}