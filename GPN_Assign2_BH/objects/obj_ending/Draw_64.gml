// Draws the box

draw_sprite_ext(spr_story, 0, 0, 800, room_width, 5, 0, c_white, 0.5);

// Draws the text

draw_set_font(MainFont);
draw_set_color(c_black);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(448, 700, print);


