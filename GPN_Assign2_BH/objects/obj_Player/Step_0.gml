// Main Movement
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_focus = keyboard_check(vk_shift);
key_shoot = keyboard_check(vk_space);

if (key_focus == true) {
	focus = true;
	player_spd = 1;
} else {
	focus = false;
	player_spd = 3.5;
}

key_hor = (key_right - key_left) * player_spd;
key_vert = (key_down - key_up) * player_spd;

x += key_hor;
y += key_vert;

x=clamp(x, 0, room_width - sprite_width);
y=clamp(y, 0, room_height - sprite_height);