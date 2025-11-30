/// obj_LibraryDoorPuzzle – Step

// 1. Close window view with ESC
if (viewing_window && keyboard_check_pressed(vk_escape)) {
    viewing_window    = false;
    current_window_id = noone;
    ui_open           = false;
}

// 2. Close code entry with ESC
if (entering_code && keyboard_check_pressed(vk_escape)) {
    entering_code = false;
    code_input    = "";
    ui_open       = false;
}

// 3. Handle code typing when in padlock mode
/// obj_LibraryDoorPuzzle – Step  (code-entry part)

if (entering_code) {

    // Number keys 0–9
    for (var d = 0; d <= 9; d++) {
        var key = ord("0") + d;
        if (keyboard_check_pressed(key)) {
            if (string_length(code_input) < 4) {
                code_input += string(d);
            }
        }
    }

    // Backspace
    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(code_input) > 0) {
            code_input = string_copy(code_input, 1, string_length(code_input) - 1);
        }
    }

    // Submit with ENTER
    if (keyboard_check_pressed(vk_enter)) {
        if (string_length(code_input) == 4) {

            if (code_input == correct_code) {
                // ✅ SUCCESS: unlock door and close UI – but DON'T change room
                door_unlocked = true;
                entering_code = false;
                ui_open       = false;
                code_input    = "";
                // (door object will see door_unlocked and open itself)
            } else {
                // ❌ WRONG CODE: clear, let them try again
                code_input = "";
            }
        }
    }

    // ESC to cancel
    if (keyboard_check_pressed(vk_escape)) {
        entering_code = false;
        ui_open       = false;
        code_input    = "";
    }
}

