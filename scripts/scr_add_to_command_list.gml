/// scr_add_to_command_list(direction)
{
    with(instance_find(obj_mind_control_controller, 1)) {
        if (ds_list_size(stored_command_list) < 3) {
            ds_list_add(stored_command_list, argument0);
        }
    }
}
