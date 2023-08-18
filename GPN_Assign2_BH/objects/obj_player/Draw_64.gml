/// @description Override
// Changes to GUI to white during debug
if (is_debug) {draw_set_color(c_white)}
else {draw_set_color(c_black)};
draw_set_font(GameFont);

if (!in_story) { draw_text(32, 64, "Bombs: " + string(self.bombs)); }
