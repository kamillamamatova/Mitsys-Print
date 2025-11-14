// --- obj_monster: Create ---
state = "normal";

// --- obj_monster: Step ---
if (state == "cleansed") {
    speed = 0; // Or reduce speed
    image_blend = c_white; // Maybe make them glow
} else {
    // normal AI behavior
}

// --- obj_monster: Alarm[0] ---
state = "normal";
image_blend = c_red; // back to normal
