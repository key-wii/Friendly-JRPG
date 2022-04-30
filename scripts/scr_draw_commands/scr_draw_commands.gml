//Draws box and commands
function draw_commands(box_left, box_top, box_w, box_h) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_font(fnt_textbox);
	draw_set_color(oController.UIcolor);

	var spr = sprite_index;
	switch (global.boxCol) {
		case "G": spr = sprBoxG break;
		case "P": spr = sprBoxP break;
	}
	draw_9slice(box_left, box_top, box_w, box_h, spr, 0);

	if (!text_draw) exit;
	
	var xx = 0;
	var yy = 0;
	for (var i = 0; i < ds_list_size(commands); i++) {
		textHeight = string_height(commands[| i][0]);
		draw_9slice(box_left + xx, box_top + yy, box_w / 2 + space / 2, box_h / 2, spr, 0);
		draw_text(box_left + xx + box_w / 4, box_top + yy + textHeight, commands[| i][0]);
		if (i mod 2 == 0) {
			xx += box_w / 2 - space / 2;
		} else {
			xx = 0;
			yy += box_h / 2;
		}
	}
	
	/*textPart = string_copy(fullText, 1, ceil(charCount));
	textHeight = string_height(textPart) + 2;
	var lines = string_count("\n", textPart) + 1;
	textHeight /= lines;
	var xxx = w / 2;
	var yyy = h - box_h + (box_h / 4) - (lines * 15) + (lines * 7);
	//allows up to 4 lines of text
	switch (lines) {
		case 3: yyy += 15; break;
		case 4: yyy += 21; break;
	}
	//draw_text(xxx + (por_h / 2) + 7, yyy + textHeight, textPart);	NOT USING PORTRAIT RN
	draw_text(xxx, yyy + text_y + textHeight, textPart);*/
}