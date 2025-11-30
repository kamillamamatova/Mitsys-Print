// 1. Define Cell Size 
var _cell_size = 32;

// 2. Calculate the Grid Dimensions
var _h_cells = room_width div _cell_size;
var _v_cells = room_height div _cell_size;

// 3. Create the MP Grid
mp_grid = mp_grid_create(0, 0, _h_cells, _v_cells, _cell_size, _cell_size);

// 4. Add all instances of obj_rubble as obstacles to the grid
// The last argument (false) means the cells are marked as "solid."
mp_grid_add_instances(mp_grid, obj_rubble, false); 
mp_grid_add_instances(mp_grid, obj_wall, false);