/// @description Insert description here
// You can write your code in this editor


value_defult("callenemy",0)

showx=x
showy=y+sin(timefromborn/30)*10

if callenemy>0{
	draw_rectangle_plus(x-32,y,x+32,room_height,c_black,c_black,0.2,0.2,0)
	draw_rectangle_plus(x-32*callenemy/500,y,x+32*callenemy/500,room_height,c_black,c_black,0.2,0.2,0)
}

draw_sprite_ext(S_enemy_UFO,0,showx,showy,1,1,0,showcolor,1)

if HP>=2 draw_sprite_ext(S_enemy_UFO,1,showx,showy,1,1,0,showcolor,1)
if HP>=3 draw_sprite_ext(S_enemy_UFO,2,showx,showy,1,1,0,showcolor,1)


if shake =30{
	if HP=2 {for(i=0;i<2;++i){instance_create_depth(x,y,-5,O_debris,{sp : S_enemy_debris,spnum : 4,color : showcolor1})}}
	if HP=1 {instance_create_depth(x,y,-5,O_debris,{sp : S_enemy_debris,spnum : 5,color : showcolor1})}
}

draw_circle_plus(x,y,80,c_white,0.7*shild/30)
