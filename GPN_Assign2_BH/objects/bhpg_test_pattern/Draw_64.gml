draw_set_halign(fa_left);

draw_set_color(bullets_col);
draw_text(8,8,string_hash_to_newline("bullets per array: " + string(bullets)));

draw_set_color(spread_col);
draw_text(8,24,string_hash_to_newline("individual array spread: " + string(spread)));

draw_set_color(total_arrays_col);
draw_text(8,56,string_hash_to_newline("total bullet arrays: " + string(total_arrays)));

draw_set_color(array_spread_col);
draw_text(8,72,string_hash_to_newline("total array spread: " + string(array_spread)));

draw_set_color(start_angle_col);
draw_text(8,104,string_hash_to_newline("start angle: " + string(start_angle)));

draw_set_color(spin_col);
draw_text(8,120,string_hash_to_newline("current spin speed: " + string(spin)));

draw_set_color(spin_mod_col);
draw_text(8,136,string_hash_to_newline("spin speed change rate: " + string(spin_mod)));

draw_set_color(spin_reverse_col);
draw_text(8,152,string_hash_to_newline("spin reversal: " + string(spin_reverse)));

draw_set_color(max_spin_spd_col);
draw_text(8,168,string_hash_to_newline("max spin speed: " + string(max_spin_spd)));

draw_set_color(fire_rate_col);
draw_text(8,200,string_hash_to_newline("fire rate: " + string(fire_rate)));

draw_set_color(bullet_speed_col);
draw_text(8,216,string_hash_to_newline("bullet speed: " + string(bullet_speed)));

draw_set_color(bullet_accel_col);
draw_text(8,232,string_hash_to_newline("bullet acceleration: " + string(bullet_accel)));

draw_set_color(bullet_curve_col);
draw_text(8,248,string_hash_to_newline("bullet curve: " + string(bullet_curve)));

draw_set_color(object_width_col);
draw_text(8,280,string_hash_to_newline("object width: " + string(object_width)));

draw_set_color(object_height_col);
draw_text(8,296,string_hash_to_newline("object height: " + string(object_height)));

draw_set_color(x_offset_col);
draw_text(8,312,string_hash_to_newline("x offset: " + string(x_offset)));

draw_set_color(y_offset_col);
draw_text(8,328,string_hash_to_newline("y offset: " + string(y_offset)));


draw_set_color(c_white);
draw_text(8,360,string_hash_to_newline("bullets on screen: " + string(instance_number(bhpg_test_bullet))));
draw_text(8,376,string_hash_to_newline("fps: " + string(fps)));

