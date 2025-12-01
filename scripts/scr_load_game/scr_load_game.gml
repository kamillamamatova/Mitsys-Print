/// @function scr_load_game()
/// @return {bool} true if loaded successfully, false otherwise
function scr_load_game() {

    var _filename = "savegame.sav";
    
    // Check if the save file exists first.
    if (!file_exists(_filename)) {
        show_debug_message("No save file found.");
        return false;
    }
    
    // Load the entire file into a buffer.
    var _buffer = buffer_load(_filename);
    
    // Read the single JSON string back from the buffer.
    var _json_string = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);
    
    
    // Convert the JSON string back into a GameMaker struct.
    var _loaded_data = json_parse(_json_string);
    
    // If parsing failed for some reason, exit.
    if (!is_struct(_loaded_data)) {
        show_debug_message("Failed to parse save data.");
        return false;
    }
    
    
    // --- Apply Instance Data ---
    
    // Restore the room first 
    room_goto(_loaded_data.current_room); 
    
    // Find the player instance and apply state
    if (instance_exists(obj_aribel)) {
        obj_aribel.x = _loaded_data.player_x;
        obj_aribel.y = _loaded_data.player_y;
        obj_aribel.has_cleansing = _loaded_data.player_has_power;
    }
    
    show_debug_message("Game loaded successfully!");
    return true;
}