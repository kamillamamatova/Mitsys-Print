/// obj_aribel - Room Start

if (global.ch_puzzle_return_flag) {
    // Put player back where they were before going to the incorrect room
    x = global.ch_puzzle_last_x;
    y = global.ch_puzzle_last_y;
    global.ch_puzzle_return_flag = false;
}


if (room == rm_wrong) {
    x = global.ch_puzzle_spawn_x;
    y = global.ch_puzzle_spawn_y;
}