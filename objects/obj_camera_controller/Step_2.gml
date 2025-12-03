/// obj_camera_controller: End Step

if (instance_exists(obj_aribel)) {

    var vw = camera_get_view_width(cam);
    var vh = camera_get_view_height(cam);

    // Center camera on Aribel
    var target_x = obj_aribel.x - vw * 0.5;
    var target_y = obj_aribel.y - vh * 0.5;

    // Clamp so we don't see outside the room
    target_x = clamp(target_x, 0, room_width  - vw);
    target_y = clamp(target_y, 0, room_height - vh);

    // Smooth follow with LERP
    cam_x = lerp(cam_x, target_x, follow_speed);
    cam_y = lerp(cam_y, target_y, follow_speed);
}

// Optional: screen shake (safe to leave here even if you never use it)
var shake_x = 0;
var shake_y = 0;

if (shake_mag > 0) {
    shake_mag *= shake_decay;
    if (shake_mag < 0.1) shake_mag = 0;

    shake_x = random_range(-shake_mag, shake_mag);
    shake_y = random_range(-shake_mag, shake_mag);
}

// Apply camera position
camera_set_view_pos(cam, round(cam_x + shake_x), round(cam_y + shake_y));
