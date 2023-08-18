// Transitions the GUI to white during debug
if (is_debug || room == rm_stage2) {draw_set_color(c_white)}
else {draw_set_color(c_black)};
draw_set_font(GameFont);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
// Draws only during stage
if (!in_story) {draw_text(32, 32, "Lives: " + string(global.lives));}




