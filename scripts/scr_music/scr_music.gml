function play_room_music() {
    var music = noone;
    
    switch (room) {
		case rm_title_screen:
			music = snd_title_music;
			break;
        case rm_prologue:
            music = snd_prologue_music;
            break;
        case rm_exterior:
            music = snd_exterior_music;
            break;
    }

    if (music != noone && global.current_music != music) {
        if (audio_is_playing(global.current_music)) {
            audio_stop_sound(global.current_music);
        }
        global.current_music = music;
        audio_play_sound(music, 1, true);
    }
}
