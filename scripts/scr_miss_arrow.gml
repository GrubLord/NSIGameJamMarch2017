/// scr_miss_arrow(the_arrow)
{
    argument0.image_blend = c_red;
    
    with(instance_find(obj_mind_control_controller, 1)) {
        combo = 0;
    }
    
    with(obj_ufo) {
        timeline_position = 1;
        
        new_abduction_site_x = abduction_site_x
        new_abduction_site_y = abduction_site_y
        
        switch(argument0.image_index) {
            case C_ARROW_DOWN:
                new_abduction_site_y += C_UFO_COMMAND_MOVE_AMOUNT
                break;
            case C_ARROW_DOWN_LEFT:
            case C_ARROW_LEFT_DOWN:
                new_abduction_site_y += C_UFO_COMMAND_MOVE_AMOUNT
                new_abduction_site_x -= C_UFO_COMMAND_MOVE_AMOUNT
                break;
            case C_ARROW_DOWN_RIGHT:
            case C_ARROW_RIGHT_DOWN:
                new_abduction_site_y += C_UFO_COMMAND_MOVE_AMOUNT
                new_abduction_site_x += C_UFO_COMMAND_MOVE_AMOUNT
                break;
            case C_ARROW_LEFT:
                new_abduction_site_x -= C_UFO_COMMAND_MOVE_AMOUNT
                break;
            case C_ARROW_LEFT_UP:
            case C_ARROW_UP_LEFT:
                new_abduction_site_y -= C_UFO_COMMAND_MOVE_AMOUNT
                new_abduction_site_x -= C_UFO_COMMAND_MOVE_AMOUNT
                break;
            case C_ARROW_RIGHT:
                new_abduction_site_x += C_UFO_COMMAND_MOVE_AMOUNT
                break;
            case C_ARROW_RIGHT_UP:
            case C_ARROW_UP_RIGHT:
                new_abduction_site_y -= C_UFO_COMMAND_MOVE_AMOUNT
                new_abduction_site_x += C_UFO_COMMAND_MOVE_AMOUNT
                break;
            case C_ARROW_UP:
                new_abduction_site_y -= C_UFO_COMMAND_MOVE_AMOUNT
                break;
        }
        
        abduction_site_x = min(2368, max(new_abduction_site_x, 384));
        abduction_site_y = min(1152, max(new_abduction_site_y, -64));
    }
}
