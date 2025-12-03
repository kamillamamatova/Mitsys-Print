/// obj_cheshire_puzzle_controller: Create

// First-time initialization for the whole puzzle (once per new game)
if (!variable_global_exists("ch_puzzle_initialized"))
{
    global.ch_puzzle_initialized     = true;
    global.ch_puzzle_max_incorrect   = 3;
    global.ch_puzzle_incorrect_count = 0;

    // First maze room for a full reset (explicitly your first room)
    global.ch_puzzle_first_room = rm_0;

    // Last visited puzzle room starts as first room
    global.ch_puzzle_last_room  = rm_0;
	
	// NEW: lock starts off
    global.ch_puzzle_transition_lock = false;
}
