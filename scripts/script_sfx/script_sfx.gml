switch (argument0){
	case "hit":
		var snd = audio_play_sound(snd_hit, 1, 0);
		break;
	case "jump":
		var snd = audio_play_sound(snd_jump, 3,0);
		break;
	case "catch":
		var snd = audio_play_sound(snd_catchBird, 2, 0);
		break;
	case "destroy":
		var snd = audio_play_sound(snd_destroy, 2, 0);
		break;
	case "game":
		var snd = audio_play_sound(snd_gameOver, 2, 0);
		break;
	case "win":
		var snd = audio_play_sound(snd_winLevel, 2, 0);
		break;
}
if(argument0 == "hit"){
	audio_sound_gain(snd,obj_sounds.sfxVolume*2,0);
} else {
	audio_sound_gain(snd,obj_sounds.sfxVolume,0);
}
		