/// obj_cheshire_incorrect: Create

var remaining = max(0, global.ch_puzzle_max_incorrect - global.ch_puzzle_incorrect_count);

// Call your dialogue script here.
// You said you already have dialogue written – so plug in however your system works.

// Example patterns (replace with your real script):

if (remaining > 0) {
    // e.g. "You have X more chances, my dear..."
    scr_start_dialogue_ch_cheshire_incorrect(remaining);
} else {
    // e.g. "No more chances! Back to the beginning you go."
    scr_start_dialogue_ch_cheshire_reset();
}

