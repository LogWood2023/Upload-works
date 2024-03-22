/// @description Insert description here
// You can write your code in this editor


value_defult("callenemy",0)

showx=x
showy=y+sin(timefromborn/30)*10


bombtime+=-1{
	draw_circle_plus(x,showy,96,c_black,0.2)
	draw_circle_plus(x,showy,96*(600-bombtime)/600,c_white,0.2)
	if bombtime<=0 {
	O_wall.HP+=-10
	instance_destroy()}
}

draw_sprite_ext(S_gold,0,showx,showy,1,1,rot,showcolor,1)

draw_circle_plus(x,y,80,c_white,0.7*shild/30)