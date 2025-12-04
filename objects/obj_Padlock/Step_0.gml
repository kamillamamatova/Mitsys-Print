/// obj_Padlock – Step

var p = obj_aribel;
if (!instance_exists(p)) exit;

// --- adjust for bottom-center origin on the player ---
var px = p.x;

// move the interaction point up from her feet to around her middle
var half_h = sprite_get_height(p.sprite_index) * 0.5; // half the sprite height
var py = p.y - half_h;

// distance from padlock to Aribel's "center"
var dist = point_distance(x, y, px, py);

// make the radius a bit forgiving
var can_interact = (dist < 40);

if (can_interact && keyboard_check_pressed(vk_enter)) {
    var ctl = instance_find(obj_LibraryDoorPuzzle, 0);
    if (instance_exists(ctl) && !ctl.ui_open && !ctl.door_unlocked) {
        ctl.entering_code = true;
        ctl.viewing_window = false;
        ctl.ui_open = true;
        ctl.code_input = "";
    }
}
