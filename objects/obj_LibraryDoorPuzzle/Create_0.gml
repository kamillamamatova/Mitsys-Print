/// obj_LibraryDoorPuzzle – Create

// ROYGBIV code as 4 digits (example)
correct_code = "4173";

// WINDOW VIEW STATE
viewing_window    = false;   // are we currently viewing a window?
current_window_id = noone;   // which window instance is active

// CODE ENTRY STATE (for padlock)
entering_code = false;       // are we in "enter code" mode?
code_input    = "";          // what the player typed

// DOOR STATE
door_unlocked = false;       // becomes true when code is correct

// GLOBAL UI FLAG (blocks movement / multiple UIs)
ui_open = false;
