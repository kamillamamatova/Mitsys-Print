/// obj_maze_cheshire – Create
event_inherited();              // run npc_parent’s Create, if it has one

input_key = vk_enter;           // talk key, same as other NPCs

// Choose dialogue based on room
switch (room) {
    case rm_0:
        dialog = global.rm0_dialog;
        break;

    case rm_A:
        dialog = global.rmA_dialog;
        break;

    case rm_B:
        dialog = global.rmB_dialog;
        break;

    case rm_C:
        dialog = global.rmC_dialog;
        break;

    case rm_D:
        dialog = global.rmD_dialog;
        break;

    // add more cases if you have more Cheshire rooms

    default:
        // Fallback so he always says *something* instead of failing silently
        dialog = global.laugh_cat;
        break;
}

