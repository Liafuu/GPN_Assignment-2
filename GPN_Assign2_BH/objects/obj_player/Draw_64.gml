/// @description Override
// Changes to GUI to white during debug
if (is_debug || room == rm_stage2) {draw_set_color(c_white)}
else if (room == rm_stage) {draw_set_color(c_black)}
else {draw_set_color(c_white)}

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(GameFont);

if (!in_story) { draw_text(32, 32, "Lives: " + string(global.lives)); }
if (!in_story) { draw_text(32, 64, "Bombs: " + string(global.bombs)); }
if (!in_story) { draw_text(32, 96, "Score: " + string(global.score)); }
