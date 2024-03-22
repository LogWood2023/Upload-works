/// @description Insert description here
// You can write your code in this editor

function cremonster(colorp,HPm,UFO){
	cremonster_HPmax=irandom_range(1,HPm)
	cremonster_value=cremonster_HPmax*10
if random_range(0,100)>UFO{
instance_create_depth(-100,-100,0,O_createenemy,{
	colorprobability : colorp,
	HPmax : cremonster_HPmax
})}
else{
	cremonster_value=cremonster_value*1.5
instance_create_depth(irandom_range(0,room_width*3/4),-100,0,O_enemy_UFO,{
	colorprobability : colorp,
	HPmax : cremonster_HPmax
})
}return cremonster_value}

function wavecut(targetgold,wavetop,wavetimex){
	wavecut_waveinf=[[]]
	for(wavecut_i=0;wavecut_i<wavetop;++wavecut_i){
		wavecut_waveinf[2*wavecut_i][0]=targetgold*(1/4)/wavetop
		wavecut_waveinf[2*wavecut_i][1]=30*wavetimex
		wavecut_waveinf[2*wavecut_i+1][0]=targetgold*(3/4)/wavetop
		wavecut_waveinf[2*wavecut_i+1][1]=30
	}
	return wavecut_waveinf
}

function wavegoon(waveinf,colorp,HPm,UFO){
	value_defult("wavestep",0)
	value_defult("givegold",0)
	value_defult("waveontime",0)
	if wavestep<array_length(waveinf){
		waveontime+=irandom_range(1,2)
		if waveontime>waveinf[wavestep][1] 
		{givegold+=cremonster(colorp,HPm,UFO);waveontime=0}
		if givegold>waveinf[wavestep][0] {
			waveontime=0
			if (instance_number(O_enemy)<=1&&wavestep=array_length(waveinf)-1)||(instance_number(O_enemy)<=2&&wavestep!=array_length(waveinf)-1){
			wavestep+=1;givegold=0}}
	}else{
		skilling=0
		wavestep=0
		givegold=0
		waveontime=0
	}
}
if HP>0&&y!=room_height/2-130
	y+=(room_height/2-130-y)/10
	if abs(room_height/2-130-y)<1 y=room_height/2-130

if HP>0&&y=room_height/2-130{
	if first=0 {music_play(boss,0.5,1);first=1}
if skilling==0&&(instance_number(O_enemy_UFO)+instance_number(O_enemy_normal)+instance_number(O_enemy_wing)<=0){
	switch irandom_range(1,2){
		case 1:{
			music_play(UFO_,0.5)
			skilling=1;wingspeed=12
		break}
		case 2:{
			music_play(UFO_,0.5)
			skilling=2;wingspeed=-12
		break}
	}
}

if skilling=1{
	if wingdistance>0 wingdistance+=-1
	if wingspeed>1 wingspeed+=-0.1
	if wingspeed==1&&wingdistance==0{
		wavegoon(wavecut(300,1,3),0.5,3,0.4)
	}
}


if skilling=2{
	if wingdistance>0 wingdistance+=-1
	if wingspeed<1 wingspeed+=0.1
	if wingspeed==1&&wingdistance==0{
		for(i=0;i<3;i++){
			instance_create_depth(x,y,-5,O_enemy_wing)
			skilling=0
		}
	}
}
}
if HP<=0{
	deadtime+=1
	shake=random_range(5,10)
	O_wall.HP=90
	y+=0.3
	if get_timer()%5==0
	{instance_create_depth(x-512+random_range(0,1024),y-512+random_range(0,1024),-10,O_boom,{
	color : randomcolor(),
	boom : [[S_enemy_debris,0,1,1],[S_enemy_debris,1,1,1],[S_enemy_debris,2,1,1]]})
	music_play(bomb,0.5)
	}
	if deadtime>300 instance_destroy()
}