/// obj_WindowView – Step (DEBUG VERSION)

var p = obj_aribel; // <-- change this if your player has a different name
if (!instance_exists(p))
{
    show_debug_message("DEBUG: No player instance found!");
    exit;
}

var dist = point_distance(x, y, p.x, p.y);
var can_interact = (dist < 72);  // easier to trigger for testing

if (can_interact)
{
    show_debug_message("DEBUG: Player near window. dist=" + string(dist));
}

if (can_interact && keyboard_check_pressed(vk_enter))
{
    show_debug_message("DEBUG: Enter pressed. Attempting to open window view...");
    
    var ctl = instance_find(obj_LibraryDoorPuzzle, 0);
    if (instance_exists(ctl))
    {
        show_debug_message("DEBUG: Controller found. Opening...");
        
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
