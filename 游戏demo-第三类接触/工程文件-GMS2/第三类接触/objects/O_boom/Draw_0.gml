/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(S_boom,timeformborn,x,y,scl,scl,dir,color,1)

timeformborn+=0.5

if timeformborn>=6 instance_destroy()

if timeformborn==4 array_insert(O_afterboom.boomlist,array_length(O_afterboom.boomlist),[color,x,y,scl,random(360)])