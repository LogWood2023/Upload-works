/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(S_bak,1,0,room_height,1,1,0,c_white,1)
draw_sprite_ext(S_bak,2,0,room_height,1,1,0,c_white,(wavelevel-1)/3)
draw_sprite_ext(S_bak,2,0,room_height,1,1,0,c_black,wavelevel-4)
draw_sprite_ext(S_bak,0,-32,room_height,1,1.1,0,c_white,1)

function starttitle(){
	value_defult("starttime",0)
	value_defult("starttime1",0)
	draw_rectangle_plus(0,0,wid,hei,c_black,c_black,(30-starttime)/30,(30-starttime)/30,0)
	draw_sprite_ext(s_title,0,room_width/2,room_height/4-128,1,1,0,c_white,(30-starttime)/30)
	draw_text_plus(">按鼠标任意键开始游戏<",0,room_width,room_height*7/8,-1,0.3,0.3,0,c_white,(0.5+0.3*sin(get_timer()/1000000))*(30-starttime)/30,1)
	if abs(mouse)>=2&&O_enemycreatesystem.timefromborn>30{
		starttime1=1
	}
	if starttime1=1 starttime+=1
	if starttime>=30 {master.start=1;instance_destroy()}
}

function startst(){
	music_play(_start,1,1)
}

if start=0{
	cre_botton("reloadkick",0,0,room_width,room_height,-100,startst,starttitle,)
}