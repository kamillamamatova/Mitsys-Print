if (puzzle_complete) exit;

// Check if player crossed
if (place_meeting(obj_aribel.x, obj_aribel.y, obj_mist_goal)) {
    player_crossed = true;
}

// Count civilians that crossed
var crossed = 0;

with (obj_civilian) {
    if (has_crossed) crossed++;
}

// If everyone crossed
if (crossed == total_civilians && player_crossed) {
    puzzle_complete = true;
    puzzle_finished();
}

function puzzle_finished() {
    show_debug_message("PUZZLE COMPLETED");

    // Stop all civilians from following
    with (obj_civilian) {
        following_player = false;
    }

    // Trigger ending dialogue
    //var d = instance_create_layer(0, 0, "GUI", obj_textbox);
    //d.text = "Thank you, traveler... You saved us from the cursed mist.\n\nFollow the northern path to the Shrine of Echoes.";

    // Unlock next puzzle
    global.mist_puzzle_done = true;
}
