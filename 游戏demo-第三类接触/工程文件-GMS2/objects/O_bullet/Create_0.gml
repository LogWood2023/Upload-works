/// @description Insert description here
// You can write your code in this editor

function defultkick(){
	if instance_exists(target)==true
	array_insert(target.hurtlist,array_length(target.hurtlist),[color,atk])
	instance_destroy()
}

function defultmove(){
	x+=lengthdir_x(flyspeed,dir)
	y+=lengthdir_y(flyspeed,dir)
}

function defultdraw(){
	draw_sprite_ext(S_bullet,0,x,y,scl,scl,timefromborn*15,color,1)
}

function defultdestory(){
	music_play(damage1,0.3)
	instance_create_depth(x,y,0,O_boom,{
		color : color,
		scl : 0.4*scl
	})
}



timefromborn=0

value_defult("kick",defultkick)
value_defult("move",defultmove)
value_defult("draw",defultdraw)
value_defult("destory",defultdestory)
value_defult("atk",1)
value_defult("flyspeed",8)
value_defult("dir",180)
value_defult("color",c_white)
value_defult("scl",1)
value_defult("colbox",32)
