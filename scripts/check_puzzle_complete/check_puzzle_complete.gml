function check_puzzle_complete()
{
    if (puzzle_solved) return;

    for (var i = 0; i < lever_count; i++)
    {
        if (levers[i].state == 0)
        {
            return; // not solved
        }
    }

    // Puzzle solved!
    puzzle_solved = true;

    with (obj_safe)
    {
        is_open = true;
    }

    show_message("The mechanism has been restored...");
}
