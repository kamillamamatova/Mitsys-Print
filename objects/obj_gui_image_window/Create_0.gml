/// obj_gui_image_window – Create

// ---- Interaction settings ----
interaction_radius = 40; // distance Aribel must be within
gui_sprite         = sprite_index; // which sprite to show in GUI (children can change)
gui_image_index    = 0;
gui_scale          = 1; // can be overridden per child

// ---- Window visual style ----
bg_color      = make_color_rgb(15, 10, 20);
bg_alpha      = 0.85;
border_color  = c_white;
padding       = 32;

// ---- State ----
gui_is_open   = false;
