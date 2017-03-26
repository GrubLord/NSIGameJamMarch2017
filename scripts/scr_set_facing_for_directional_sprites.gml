var my_sprite = object_get_sprite(object_index);

if(my_sprite != -1) {
    if(sprite_get_number(my_sprite) == 4) {
        if(direction <= 315 && direction >= 225 ) {
            image_index = 0; // Down
        } else if (direction <= 135 && direction >= 45 ) {
            image_index = 2; // Up
        } else if (direction <= 225 && direction >= 135 ) {
            image_index = 1; // Left
        } else {
            image_index = 3; // Right
        }
    } else {
        show_debug_message("sprite_get_number is " + string(sprite_get_number(my_sprite)));
    }
} else {
    show_debug_message("No Sprite");
}
