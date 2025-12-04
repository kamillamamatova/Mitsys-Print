if (puzzle_complete) exit;

// Player must reach scientist too
if (place_meeting(obj_aribel.x, obj_aribel.y, obj_scientist)) {
    player_crossed = true;
}

// Count civilians that reached scientist
var crossed = 0;

with (obj_civilian) {
    if (has_crossed) crossed++;
}

// If ALL civilians and the player reached scientist
if (crossed == total_civilians) {
    puzzle_complete = true;
    puzzle_finished();
}

function puzzle_finished() {
    show_debug_message("PUZZLE COMPLETED");

    // Stop all civilians from following
    with (obj_civilian) {
        following_player = false;
    }

    // Remove rubble blocking exit
    with (obj_rubble) {
        instance_destroy();
    }
	
    // Unlock next puzzle
    global.mist_puzzle_done = true;
}
