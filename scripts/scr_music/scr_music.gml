// function to play music in each room

function play_room_music() {

	// if the music is not on
    if (!global.music_on) return;

    var music = noone;

	// switch case for the different music in each room
    switch (room)
    {
        case rm_title_screen: 
			music = snd_title; 
			break;
			
        case rm_prologue:     
			music = snd_prologue; 
			break;
			
        case rm_exterior:     
			music = snd_exterior; 
			break;
			
        case rm_interior:     
			music = snd_interior; 
			break;
    }

    // nothing or same music
    if (music == noone || music == global.current_music) return;

    // Fade out previous music
    if (audio_is_playing(global.current_music)) {
		// fade out over 0.75 seconds
        audio_sound_gain(global.current_music, 0, 750);
    }

    // Play new music at 0 volume
    audio_play_sound(music, 1, true);
	// fade in over 0.75 seconds
    audio_sound_gain(music, 1, 750);

	// updating to current room music
    global.current_music = music;
}