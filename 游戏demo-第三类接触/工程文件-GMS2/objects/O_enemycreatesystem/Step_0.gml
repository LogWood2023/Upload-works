/// @description Insert description here
// You can write your code in this editor

timefromborn+=1

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
			if (instance_number(O_enemy)<=0&&wavestep=array_length(waveinf)-1)||(instance_number(O_enemy)<=2&&wavestep!=array_length(waveinf)-1){
			wavestep+=1;givegold=0}}
	}else{
		waveend=1
		wavestep=0
		givegold=0
		waveontime=0
	}
}

if waveend=0&&instance_exists(O_boss)==0&&instance_exists(O_enemy_kind)==0&&instance_exists(O_createenemy1)==0{
	switch wavelevel{
		case 0:{
			if start=1{
			instance_create_depth(-100,-100,-25,O_createenemy1)}
			;break;}
		case 1:{waveinform=wavecut(400,1,3)
			wavegoon(waveinform,0.5,2,5)
			;break;}
		case 2:{waveinform=wavecut(600,1,3)
			wavegoon(waveinform,0.7,3,5)
			;break;}
		case 3:{waveinform=wavecut(1500,2,3)
			wavegoon(waveinform,0.5,3,20)
			;break;}
		case 4:{waveinform=wavecut(1000,1,3)
			wavegoon(waveinform,0.5,3,50)
			;break;}
		case 5:{
			instance_create_depth(-100,-100,-25,O_boss)
			;break;}
	}
}



if waveend=1&&wavelevel<5{
	if instance_number(O_gold)>0
		instance_destroy(instance_nearest(O_wall.x,O_wall.y,O_gold))
	function skillbordstart(){}
	function skillbordstep(){
		function nextwave(){
			light=0
			if mouse=1 light=0.4
			if abs(mouse)>1&&abs(mouse)<5 light=0.2
			draw_sprite_ext(S_card,0,room_width/2,room_height*2/9,2.8,2.8,0,c_white,1)
			if O_enemycreatesystem.wavelevel<4 draw_text_plus("功 能 上 升",0,room_width,room_height*2/9+8,-1,1,1,0,c_black,1,1)
			else draw_text_plus("行 动 完 成",0,room_width,room_height*2/9+8,-1,1,1,0,c_black,1,1)
			switch O_enemycreatesystem.wavelevel{
				case 1:{
					draw_text_plus(
			"弹药上限增加。\nU型弹药配方已解锁。\n解锁一个新的制造区。"
					,room_width/2-650,room_width/2+650,room_height*4/9,-1,0.3,0.3,0,c_black,1,0)
			if abs(mouse)==4
			{O_gun.bulletmax=6;O_gun.bullet[5]=c_black;O_gun.bullettype[5]=0
				;O_gun.furnacelock[3]=1;O_gun.furnacenum+=1;
				O_enemycreatesystem.wavelevel+=1}
					;break}
				case 2:{
					draw_text_plus(
			"弹药上限增加。\nC型弹药配方已解锁。\n解锁一个新的制造区。"
					,room_width/2-650,room_width/2+650,room_height*4/9,-1,0.3,0.3,0,c_black,1,0)
			if abs(mouse)==4
			{O_gun.bulletmax=7;O_gun.bullet[6]=c_black;O_gun.bullettype[6]=0
				;O_gun.furnacelock[4]=1;O_gun.furnacenum+=1;
				O_enemycreatesystem.wavelevel+=1}
					;break}
				case 3:{
					draw_text_plus(
			"弹药上限大幅增加。\nH型弹药配方已解锁。"
					,room_width/2-650,room_width/2+650,room_height*4/9,-1,0.3,0.3,0,c_black,1,0)
			if abs(mouse)==4
			{O_gun.bulletmax=9;O_gun.bullet[7]=c_black;O_gun.bullettype[7]=0;O_gun.bullet[8]=c_black;O_gun.bullettype[8]=0;
				;O_gun.furnacelock[5]=1;
				O_enemycreatesystem.wavelevel+=1}
					;break}
				case 4:{
					draw_text_plus(
			"弹药上限增加。\n……侦测到有强大的敌人靠近。"
					,room_width/2-650,room_width/2+650,room_height*4/9,-1,0.3,0.3,0,c_black,1,0)
			if abs(mouse)==4
			{O_gun.bulletmax=10;O_gun.bullet[9]=c_black;O_gun.bullettype[9]=0;
				O_enemycreatesystem.wavelevel+=1}
					;break}
			}
			if abs(mouse)==4{
				music_play(pressbotton,0.5)
				O_wall.HP=60
				O_enemycreatesystem.waveend=0
				instance_destroy(master)
			}
			draw_rectangle_plus(room_width/2-512-8,room_height*5/6-8,room_width/2+512+8,room_height*5/6+128+8,merge_color(c_black,c_white,light),merge_color(c_black,c_white,light),1,1,0)
			draw_rectangle_plus(room_width/2-512,room_height*5/6,room_width/2+512,room_height*5/6+128,merge_color(c_gray,c_white,light),merge_color(c_gray,c_white,light),1,1,0)
			draw_text_plus("下一波次",room_width/2-256,room_width/2+256,room_height*5/6,-1,0.6,0.6,0,merge_color(c_black,c_white,light),1,1)
			
		}
		cre_botton("nextwave",room_width/2-512,room_height*5/6,1024,128,-55,,nextwave,)
	}
	
	cre_botton("reloadkick",0,0,room_width,room_height,-50,skillbordstart,skillbordstep,)
}

if wavelevel==5&&waveend==1 {
	instance_create_depth(0,0,-1000,O_end1)
	waveend=2
}