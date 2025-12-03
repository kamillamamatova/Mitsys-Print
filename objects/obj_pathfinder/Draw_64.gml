// Only draw if the mp_grid has been created (is a valid index)
if (is_real(mp_grid) && mp_grid > 0)
{
    // Set the color for the blocked cells (e.g., Red)
    draw_set_color(c_red);
    draw_set_alpha(0.3); // Draw it transparently
    
    // Draw the grid. Blocked cells (where obj_rubble is) will be colored.
    mp_grid_draw(mp_grid);
    
    // Reset alpha after drawing
    draw_set_alpha(1);
}