bhpg_pattern_step();

if (keyboard_check_pressed(vk_up)) {
    menu_choice -= 1;
}
if (keyboard_check_pressed(vk_down)) {
    menu_choice += 1;
}

if (menu_choice < 0) {
    menu_choice = total_menu;
}
if (menu_choice > total_menu) {
    menu_choice = 0;
}

switch (menu_choice) {
    case 0:
        bullets_col = c_yellow;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            bullets -= 1;
        }
        if (keyboard_check_pressed(vk_right)) {
            bullets += 1;
        }
        break;
        
    case 1:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_yellow;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            spread -= 5;
        }
        if (keyboard_check_pressed(vk_right)) {
            spread += 5;
        }
        break;
        
    case 2:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_yellow;
        array_spread_col = c_white;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            total_arrays -= 1;
        }
        if (keyboard_check_pressed(vk_right)) {
            total_arrays += 1;
        }
        break;
        
    case 3:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_yellow;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            array_spread -= 5;
        }
        if (keyboard_check_pressed(vk_right)) {
            array_spread += 5;
        }
        break;
        
    case 4:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_yellow;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            start_angle -= 5;
        }
        if (keyboard_check_pressed(vk_right)) {
            start_angle += 5;
        }
        break;
        
    case 5:
        bullets_col = c_white;
        spin_col = c_yellow;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            spin -= 5;
        }
        if (keyboard_check_pressed(vk_right)) {
            spin += 5;
        }
        break;
        
    case 6:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_yellow;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            spin_mod -= 0.1;
        }
        if (keyboard_check_pressed(vk_right)) {
            spin_mod += 0.1;
        }
        break;
        
    case 7:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_yellow;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) {
            spin_reverse = !spin_reverse;
        }
        break;
        
    case 8:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_yellow;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            max_spin_spd -= 5;
        }
        if (keyboard_check_pressed(vk_right)) {
            max_spin_spd += 5;
        }
        break;
        
    case 9:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_yellow;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_object_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            fire_rate -= 1;
        }
        if (keyboard_check_pressed(vk_right)) {
            fire_rate += 1;
        }
        break;
    
    case 10:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_speed_col = c_yellow;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            bullet_speed -= 1;
        }
        if (keyboard_check_pressed(vk_right)) {
            bullet_speed += 1;
        }
        break;
    case 11:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_yellow;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            bullet_accel -= 0.1;
        }
        if (keyboard_check_pressed(vk_right)) {
            bullet_accel += 0.1;
        }
        break;
    case 12:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_yellow;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            bullet_curve -= 1;
        }
        if (keyboard_check_pressed(vk_right)) {
            bullet_curve += 1;
        }
        break;
    case 13:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_yellow;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            object_width -= 1;
        }
        if (keyboard_check_pressed(vk_right)) {
            object_width += 1;
        }
        break;
    case 14:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_yellow;
        x_offset_col = c_white;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            object_height -= 1;
        }
        if (keyboard_check_pressed(vk_right)) {
            object_height += 1;
        }
        break;
    case 15:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_yellow;
        y_offset_col = c_white;
        if (keyboard_check_pressed(vk_left)) {
            x_offset -= 1;
        }
        if (keyboard_check_pressed(vk_right)) {
            x_offset += 1;
        }
        break;
    case 16:
        bullets_col = c_white;
        spin_col = c_white;
        spin_mod_col = c_white;
        spin_reverse_col = c_white;
        max_spin_spd_col = c_white;
        fire_rate_col = c_white;
        spread_col = c_white;
        start_angle_col = c_white;
        total_arrays_col = c_white;
        array_spread_col = c_white;
        bullet_speed_col = c_white;
        bullet_accel_col = c_white;
        bullet_curve_col = c_white;
        object_width_col = c_white;
        object_height_col = c_white;
        x_offset_col = c_white;
        y_offset_col = c_yellow;
        if (keyboard_check_pressed(vk_left)) {
            y_offset -= 1;
        }
        if (keyboard_check_pressed(vk_right)) {
            y_offset += 1;
        }
        break;
}

if (bullets < 1) {
    bullets = 1;
}

if (fire_rate < 0) {
    fire_rate = 0;
}

if (total_arrays < 1) {
    total_arrays = 1;
}

if (start_angle > 359) {
    start_angle = 0;
}

if (start_angle < 0) {
    start_angle = 355;
}

