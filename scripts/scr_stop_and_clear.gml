motion_set(0, 0);
timeline_index = -1;

var my_sprite = object_get_sprite(self);

if(my_sprite != -1) {
    if(sprite_get_number(my_sprite) == 4) {
        image_index = 0; // Default
    }
}
