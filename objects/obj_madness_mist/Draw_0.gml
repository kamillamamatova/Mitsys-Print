draw_set_alpha(image_alpha);
draw_sprite(sprite_index, image_index, x, y);
draw_set_alpha(1); // Reset so it doesn’t affect other objects


if (cleansed) image_alpha -= 0.02; // fades out over time

