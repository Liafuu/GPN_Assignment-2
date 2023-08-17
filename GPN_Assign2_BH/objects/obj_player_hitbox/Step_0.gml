self.Invuln();

// Main Movement
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_focus = keyboard_check(vk_shift);

// Checks if shift is pressed
if (key_focus) {
	focus = true;
	player_spd = 1.5;
	
	// Aligns the hitbox if not aligned
	if (self.x != obj_player.x) {self.x = obj_player.x}
	if (self.y != obj_player.y) {self.y = obj_player.y}
} else {
	focus = false;
	player_spd = 4;
	
	// Aligns the hitbox if not aligned
	if (self.x != obj_player.x) {self.x = obj_player.x}
	if (self.y != obj_player.y) {self.y = obj_player.y}
}

key_hor = (key_right - key_left) * player_spd;
key_vert = (key_down - key_up) * player_spd;

// Stops the player from moving during death animation
if (place_meeting(x + key_hor, y, obj_death_anim) == true) { key_hor = 0; }
if (place_meeting(x, y + key_vert, obj_death_anim) == true) { key_vert = 0; }

// Moves the player
x += key_hor;
y += key_vert;

x = clamp(x, 30, room_width - sprite_width - 22);
y = clamp(y, 30, room_height - sprite_height - 38);