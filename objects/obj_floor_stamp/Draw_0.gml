/// obj_floor_stamp – Draw

// Only draw in the room it was created in
if (room == stamp_room) {
    if (stamp_sprite != noone) {
        draw_sprite(stamp_sprite, 0, stamp_x, stamp_y);
    }
}
