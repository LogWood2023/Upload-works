// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function music_play(name,gain=1,background=0){
	if background==0
	audio_play_sound(name,0,0,music2*gain)
	else{
		audio_stop_sound(BGM)
		BGM=audio_play_sound(name,0,1,music1*gain*0.5)
	}
}