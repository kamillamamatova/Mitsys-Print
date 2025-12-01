if (!puzzle_solved)
{
    madness_timer--;

    if (madness_timer <= 0)
    {
        // Fail state → send player back
        obj_aribel.x = 1300;
        obj_aribel.y = 290;

        show_message("The madness overwhelms you…");

        room_goto(rm_mist);
    }
}

draw_text(10,10, "Lever Count: " + string(array_length(levers)));

