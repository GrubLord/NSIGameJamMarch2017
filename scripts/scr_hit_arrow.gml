/// scr_hit_arrow(the_arrow)
{
    argument0.image_blend = c_green;
    var combo_finished = false;
    
    with(instance_find(obj_mind_control_controller, 1)) {
        combo++;
        //show_debug_message("Combo is at " + string(combo));
        if (combo == 5) {
            combo = 0;
            combo_finished = true;
        }
    }
    
    if(combo_finished) {
        scr_add_to_command_list(argument0.image_index);
    }
}
