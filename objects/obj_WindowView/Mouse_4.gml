/// obj_WindowView – Left Pressed
var ctl = instance_find(obj_LibraryDoorPuzzle, 0);
if (instance_exists(ctl) && !ctl.ui_open) {
    ctl.viewing_window = true;
    ctl.window_index   = window_index;
    ctl.entering_code  = false;
    ctl.ui_open        = true;
    ctl.code_input     = "";
}
