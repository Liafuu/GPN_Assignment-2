// Main Movement
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_focus = keyboard_check(vk_shift);
key_bomb = keyboard_check(vk_space);

// Checks if shift is pressed
if (key_focus) {
	focus = true;
	player_spd = 1.5;
} else {
	focus = false;
	player_spd = 4;
}

// Moves the player
key_hor = (key_right - key_left) * player_spd;
key_vert = (key_down - key_up) * player_spd;
x += key_hor;
y += key_vert;

x = clamp(x, 25, room_width - sprite_width - 22);
y = clamp(y, 25, room_height - sprite_height - 38);