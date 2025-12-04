if (!puzzle_solved && !instance_exists(obj_dialogue_lab))
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


madness_percent = (1 - (madness_timer / (room_speed * 120))) * 100;
madness_percent = clamp(madness_percent, 0, 100);