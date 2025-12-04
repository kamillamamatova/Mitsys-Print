/// obj_room_fade — persist across rooms to handle fades
persistent           = true;
flash_white = false;


enum FadeState { Idle, FadingOut, FadingIn }

state                = FadeState.Idle;
alpha                = 0;         // 0 = fully transparent, 1 = fully black
fade_speed           = 0.08;      // tweak to taste

target_room          = -1;
target_x             = 0;
target_y             = 0;

/// convenience method you can call from anywhere:
function start_transition(_room, _x, _y) {
    if (state != FadeState.Idle) return; // already fading; ignore
    target_room = _room;
    target_x    = _x;
    target_y    = _y;
    state       = FadeState.FadingOut;
}
