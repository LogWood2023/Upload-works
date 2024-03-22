/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

if HP>0
{
draw_rectangle_plus(x-128,y-160,x+128,y-160+32,c_black,c_black,1,1,0)
draw_rectangle_plus(x-128,y-160,x-128+256*HP/HPmax,y-160+32,c_red,c_red,1,1,0)
}