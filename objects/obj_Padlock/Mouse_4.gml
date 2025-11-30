/// obj_Padlock – Left Pressed
var ctl = instance_find(obj_LibraryDoorPuzzle, 0);
if (instance_exists(ctl) && !ctl.ui_open) {
    ctl.entering_code = true;
    ctl.viewing_window = false;
    ctl.ui_open = true;
    ctl.code_input = "";
}

