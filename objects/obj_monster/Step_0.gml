/// Handle Cleansed State
if (state == "cleansed") {
    speed = 0; 
    image_blend = c_white;
    exit; // Skip AI while cleansed
} else {
    image_blend = c_red;
}


/// RANDOM MOVEMENT AI

// If currently paused
if (pause_time > 0) {
    pause_time -= 1;
    speed = 0;
    exit; 
}

// If wander timer has expired, choose a new direction
if (wander_time <= 0) {
    // pick a random direction
    direction = irandom_range(0, 359);
    speed = move_speed;

    // walk for 30–90 frames (~0.5 – 1.5 sec)
    wander_time = irandom_range(30, 90);

    // small chance to pause after walking
    if (irandom(4) == 0) { // 1 in 5 chance
        pause_time = irandom_range(20, 40); // pauses 0.3 – 0.6 sec
    }
} 
else {
    wander_time -= 1;
}


/// COLLISION WITH RUBBLE 
if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_rubble)) {
    // turn away from rubble
    direction += irandom_range(120, 240);
}

x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);
