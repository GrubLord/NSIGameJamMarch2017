//createTimelineForCommand(arrow_direction)
{
    var newTimeline;
    
    newTimeline = timeline_add();
    
    switch(argument0) {
        case C_ARROW_DOWN:
            timeline_moment_add_script(newTimeline, 0, scr_go_down);
            break;
        case C_ARROW_DOWN_LEFT:
            timeline_moment_add_script(newTimeline, 0, scr_go_down);
            timeline_moment_add_script(newTimeline, C_COMMAND_DURATION/2, scr_go_left);
            break;
        case C_ARROW_DOWN_RIGHT:
            timeline_moment_add_script(newTimeline, 0, scr_go_down);
            timeline_moment_add_script(newTimeline, C_COMMAND_DURATION/2, scr_go_right);
            break;
        case C_ARROW_LEFT:
            timeline_moment_add_script(newTimeline, 0, scr_go_left);
            break;
        case C_ARROW_LEFT_DOWN:
            timeline_moment_add_script(newTimeline, 0, scr_go_left);
            timeline_moment_add_script(newTimeline, C_COMMAND_DURATION/2, scr_go_down);
            break;
        case C_ARROW_LEFT_UP:
            timeline_moment_add_script(newTimeline, 0, scr_go_left);
            timeline_moment_add_script(newTimeline, C_COMMAND_DURATION/2, scr_go_up);
            break;
        case C_ARROW_RIGHT:
            timeline_moment_add_script(newTimeline, 0, scr_go_right);
            break;
        case C_ARROW_RIGHT_DOWN:
            timeline_moment_add_script(newTimeline, 0, scr_go_right);
            timeline_moment_add_script(newTimeline, C_COMMAND_DURATION/2, scr_go_down);
            break;
        case C_ARROW_RIGHT_UP:
            timeline_moment_add_script(newTimeline, 0, scr_go_right);
            timeline_moment_add_script(newTimeline, C_COMMAND_DURATION/2, scr_go_up);
            break;
        case C_ARROW_UP:
            timeline_moment_add_script(newTimeline, 0, scr_go_up);
            break;
        case C_ARROW_UP_LEFT:
            timeline_moment_add_script(newTimeline, 0, scr_go_up);
            timeline_moment_add_script(newTimeline, C_COMMAND_DURATION/2, scr_go_left);
            break;
        case C_ARROW_UP_RIGHT:
            timeline_moment_add_script(newTimeline, 0, scr_go_up);
            timeline_moment_add_script(newTimeline, C_COMMAND_DURATION/2, scr_go_right);
            break;
        case C_FREE_HUMAN_INDEX:
            timeline_moment_add_script(newTimeline, 0, scr_move_randomly);
            break;
    }
    show_debug_message("Registering stop and clear at time " + string(C_COMMAND_DURATION));
    
    timeline_moment_add_script(newTimeline, C_COMMAND_DURATION, scr_stop_and_clear);
    
    return newTimeline;
}
