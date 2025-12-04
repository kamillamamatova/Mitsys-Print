// 9 levers for this puzzle
lever_count = 9;

// Store references here
levers = array_create(lever_count);

// MADNESS TIMER (10 seconds for example)
madness_timer = room_speed * 120;
madness_active = false; 

// Puzzle not yet solved
puzzle_solved = false;
