//Draws box and commands
function draw_commands(box_left, box_top, box_w, box_h) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_font(fnt_textbox);
	draw_set_color(oController.UIcolor);

	var spr = asset_get_index("sprBox" + global.boxCol);
	draw_9slice(box_left, box_top, box_w, box_h, spr, 0);
	
	var xx = space / 4;
	var yy = space / 4;
	for (var i = 0; i < ds_list_size(commands); i++) {
		var y_clicking = 0;
		spr = asset_get_index("sprBox" + global.boxCol);
		if (clicking[| i]) {
			y_clicking = 2;
			spr = asset_get_index("sprButtonPressed" + global.boxCol);
		}
		draw_9slice(box_left + xx, box_top + yy/* + y_clicking*/, box_w / 2, box_h / 2, spr, 0);
		textHeight = string_height(commands[| i][0]);
		draw_text(box_left + xx + box_w / 4, box_top + yy + textHeight + y_clicking, commands[| i][0]);
		
		if (i mod 2 == 0) {
			xx += box_w / 2 - space / 2;
		} else {
			xx = space / 4;
			yy += box_h / 2 - space / 2;
		}
	}
}