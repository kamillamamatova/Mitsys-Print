switch (state) {
    case FadeState.FadingOut:
        alpha = clamp(alpha + fade_speed, 0, 1);
        if (alpha >= 1) {
            // We’re fully black — perform the room switch.
            room_goto(target_room);
            // Note: because this object is persistent, it survives the switch and
            // will get its Room Start event in the next room, where we place the player.
        }
        break;

    case FadeState.FadingIn:
        alpha = clamp(alpha - fade_speed, 0, 1);
        if (alpha <= 0) {
            alpha = 0;
            state = FadeState.Idle;
        }
        break;
}
