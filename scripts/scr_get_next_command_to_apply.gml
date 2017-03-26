/// scr_get_next_command_to_apply()
{
    var next_command;
    
    with(instance_find(obj_mind_control_controller, 1)) {
        if(ds_list_empty(stored_command_list)) {
            next_command = -1;
        } else {
            next_command = ds_list_find_value(stored_command_list,0);
            ds_list_delete(stored_command_list, 0);
        }
    }
    
    return next_command;
}
