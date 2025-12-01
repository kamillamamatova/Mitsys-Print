/// @function scr_save_game()
function scr_save_game() {
    
    // Create a temporary struct to hold all the data you want to save.
    var _save_data = {
        // Player/Instance Data
        player_x: obj_aribel.x,
        player_y: obj_aribel.y,
        player_has_power: obj_aribel.has_cleansing,
        
        // Global/Persistent Data
        current_room: room
    };
    
    // Convert the struct into a JSON string.
    var _json_string = json_stringify(_save_data);
    
    // Determine the required buffer size (string length + 1 byte for null terminator)
    var _buffer_size = string_byte_length(_json_string) + 1;
    
    // Create a new buffer to store the data.
    var _buffer = buffer_create(_buffer_size, buffer_fixed, 1);
    
	
    
    // Write the JSON string into the buffer.
    buffer_write(_buffer, buffer_string, _json_string);
    
    // Save the buffer's contents to a file (the persistent file name).
    buffer_save(_buffer, "savegame.sav");
    
    // IMPORTANT: Always delete the buffer when done to free up memory.
    buffer_delete(_buffer);
    
    show_debug_message("Game saved successfully!");
}