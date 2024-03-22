
music_play(bomb,1)

instance_create_depth(x,y,-10,O_boom)

if variable_instance_exists(id,"call")==1{
	audio_stop_sound(call)
}
/*
for(;value>0;){
	nowvalue=irandom_range(3,5)
	if nowvalue>value nowvalue=value
	instance_create_depth(x,y,-25,O_gold,{value : nowvalue})
	value+=-nowvalue
}*/
for(i=0;i<instance_number(O_enemy);++i){
	instance_destroy(instance_find(O_enemy,i))
}

O_enemycreatesystem.waveend=1

