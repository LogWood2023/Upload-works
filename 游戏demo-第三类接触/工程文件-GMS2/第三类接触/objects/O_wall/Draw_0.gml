/// @description Insert description here
// You can write your code in this editor



draw_sprite_ext(S_wall_build,0,x-30,y-300,2,2,get_timer()/100000,c_white,1)
draw_sprite_ext(S_wall_build,0,x+80,y-600,2,2,get_timer()/100000+60,c_white,1)
draw_sprite_ext(S_wall_build,0,x-30,y-800,2,2,get_timer()/100000+90,c_white,1)

draw_sprite_ext(S_thewall,1,x+power(-1,round(shake/2))*shake/3,y,1,1,0,merge_color(c_white,c_red,shake/30),1)

draw_sprite_ext(S_thewall,0,x,y,1,1,0,c_white,1)



