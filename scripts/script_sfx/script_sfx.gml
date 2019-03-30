switch (argument0){
	case "jump":
		var snd = audio_play_sound(snd_jump, 3,0);
		break;
	case "hit":
		var snd = audio_play_sound(snd_hit, 2, 0);
		break;
	case "catch":
		var snd = audio_play_sound(snd_catchBird, 1, 0);
		break;
	case "destroy":
		var snd = audio_play_sound(snd_destroy, 1, 0);
		break;
	case "game":
		var snd = audio_play_sound(snd_gameOver, 1, 0);
		break;
	case "win":
		var snd = audio_play_sound(snd_winLevel, 1, 0);
		break;
}
audio_sound_gain(snd,obj_sounds.sfxVolume,0);
		