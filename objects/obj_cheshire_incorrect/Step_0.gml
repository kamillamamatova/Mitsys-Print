event_inherited();

if (instance_exists(obj_dialog)) exit;

// 1) Update this NPC's dialog based on current tries
var remaining = max(0, global.ch_puzzle_max_incorrect - global.ch_puzzle_incorrect_count);
dialog = scr_get_cheshire_incorrect_dialog(remaining);

// 2) Normal NPC interaction logic
if (instance_exists(obj_aribel) && distance_to_object(obj_aribel) < 8)
{
    can_talk = true;

    if (keyboard_check_pressed(input_key))
    {
        create_dialog(dialog);
    }
}
else
{
    can_talk = false;
}
