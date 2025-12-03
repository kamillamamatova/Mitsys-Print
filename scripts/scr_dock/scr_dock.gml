function scr_dock(_lines) {
    with (obj_dialogue_cthulhu) {
        dialogue = _lines;
        text_index = 0;
        dialogue_text = "";
        char_timer = 0;
        finished = false;
        active = true;

        global.move = false; // stop player movement
    }
}