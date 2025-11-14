draw_set_alpha(image_alpha);
draw_sprite(sprite_index, image_index, x, y);
draw_set_alpha(1); // Reset so it doesn’t affect other objects


if (cleansed) image_alpha -= 0.02; // fades out over time

//////////////////////////

//draw_set_alpha(0.4);
//for (var xx = 0; xx < room_width; xx += sprite_width) {
//    for (var yy = 0; yy < room_height; yy += sprite_height) {
//        draw_sprite(spr_mist, 0, xx, yy);
//    }
//}
//draw_set_alpha(1);

//fog_offset_x += 0.5;
//fog_offset_y += 0.2;
//draw_sprite_tiled_ext(spr_mist, 0, fog_offset_x, fog_offset_y, 1, 1, 0, c_white, 0.4);

//////////////////

// obj_madness_mist Draw Event
//draw_set_blend_mode(bm_add);
//draw_set_alpha(0.35);
//var wave = sin(current_time / 1000) * 5;
//draw_sprite_ext(spr_mist, 0, x + wave, y, 1, 1, 0, c_white, image_alpha);
//draw_set_blend_mode(bm_normal);
//draw_set_alpha(1);