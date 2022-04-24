//Draws box and up to 4 lines of text
function draw_command(box_left, box_top, box_w, box_h) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_textbox);
	draw_set_color(oController.UIcolor);

	var spr;
	switch (global.boxCol) {
		case "G": spr = sprButtonG break;
		case "P": spr = sprButtonP break;
	}
	draw_9slice(box_left, box_top, box_w, box_h, spr, image_index);
	
	if (!text_draw) exit;
	
	var xx = box_left + box_w / 1.95; //tweak value based on font
	var yy = box_top + box_h / 1.94; //tweak value based on font
	draw_text(xx, yy + text_y, fullText);
}