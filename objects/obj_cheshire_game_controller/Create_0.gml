/// obj_cheshire_puzzle_controller: Create

/// Puzzle start setup (in first maze room)

global.ch_puzzle_max_incorrect = 3; // how many wrong doors allowed

// IMPORTANT: reset the count each time we enter this room from outside
global.ch_puzzle_incorrect_count = 0;

// remember which room is the “first”
global.ch_puzzle_first_room  = room;

// optional: clear last-room info
global.ch_puzzle_last_room   = noone;
global.ch_puzzle_last_x      = 0;
global.ch_puzzle_last_y      = 0;
global.ch_puzzle_return_flag = false;


// How many wrong doors allowed
global.ch_puzzle_max_incorrect = 3;

// Current number of wrong doors chosen
global.ch_puzzle_incorrect_count = 0;

// Remember where the puzzle starts (first maze room)
global.ch_puzzle_first_room = room;

// Where to send the player back to after the incorrect room
global.ch_puzzle_last_room = noone;
global.ch_puzzle_last_x = 0;
global.ch_puzzle_last_y = 0;

// Helper flag to know when to reposition the player after we return
global.ch_puzzle_return_flag = false;
