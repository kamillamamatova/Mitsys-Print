/// obj_Padlock – Step
var p = obj_aribel;
if (!instance_exists(p)) exit;

var dist = point_distance(x, y, p.x, p.y);
var can_interact = (dist < 32);

if (can_interact && keyboard_check_pressed(vk_enter)) {
    var ctl = instance_find(obj_LibraryDoorPuzzle, 0);
    if (instance_exists(ctl) && !ctl.ui_open && !ctl.door_unlocked) {
        ctl.entering_code = true;
        ctl.viewing_window = false;
        ctl.ui_open = true;
        ctl.code_input = "";
    }
}
