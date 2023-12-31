draw_set_alpha(0.25);
draw_sprite_stretched(spr_menu, 0, x-margin, y-margin, widthFull, heightFull);

draw_set_alpha(1);
draw_set_color(c_black);
draw_set_font(MainFont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = !(description == -1);
for (l = 0; l < (options_count + _desc); l++) {
	draw_set_color(c_black);
	if (l == 0 && _desc) { draw_text(x, y, description) }
	else {
		var _str = options[l-_desc][0]
		if (hover == l - _desc) {
			draw_set_colour(c_red);
			// if (hover == 2) { draw_set_color(c_grey); }
			_str = hovermarker + _str;
		}
		draw_text(x, y + l * heightLine, _str);
	}
}




