/// @description Insert description here
// You can write your code in this editor
music_play(bomb,0.5)

instance_create_depth(x,y,-10,O_boom,{
	color : showcolor1,
	boom : [[S_enemy_debris,0,1,1],[S_enemy_debris,1,1,1],[S_enemy_debris,2,1,1]]
})

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

if random_range(0,100)<O_gun.bulletreturn{
	music_play(get,0.5)
	O_gun.bulletstore[3]+=HPmax
}