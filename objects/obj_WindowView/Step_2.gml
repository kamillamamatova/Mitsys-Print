/// obj_WindowView

var p = obj_aribel; 


var dist = point_distance(x, y, p.x, p.y);
var can_interact = (dist < 72); 


if (can_interact && keyboard_check_pressed(vk_enter))
{
    
    var ctl = instance_find(obj_LibraryDoorPuzzle, 0);
    if (instance_exists(ctl))
    {
        
        ctl.viewing_window    = true;
        ctl.current_window_id = id;
        ctl.ui_open           = true;
        ctl.entering_code     = false;
        ctl.code_input        = "";
    }
    else
    {
        show_debug_message("DEBUG: ERROR: No controller instance found!");
    }
}
