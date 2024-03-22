/// @description Insert description here
// You can write your code in this editor

timefromborn=0

depth=-1000

for(i=0;i<instance_number(O_enemy);++i){
	instance_destroy(instance_find(O_enemy,i))
}
O_enemycreatesystem.waveend=1

audio_stop_all()