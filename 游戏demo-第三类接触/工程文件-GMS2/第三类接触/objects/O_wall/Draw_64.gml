/// @description Insert description here
// You can write your code in this editor
if O_enemycreatesystem.start!=0{
draw_rectangle_plus(32-4,128+4,32+512-4,128+32+4,c_black,c_black,0.4,0.4,"I")
draw_rectangle_plus(32,128,32+512,128+32,c_gray,c_gray,1,1,"I")
draw_rectangle_plus(32+8,128+4,32+512-8,128+32-4,c_black,c_black,1,1,"I")
draw_rectangle_plus(32+8+4,128+4+4,32+12+(512-16-8)*HP/HPmax,128+32-4-4,c_green,c_green,1,1,"I")
/*
textscl=0.3
textwid=string_width(string(gold))*textscl
draw_rectangle_plus(32-4,176+4,32+64+textwid+16-4,176+64+4,c_black,c_black,0.6,0.6,0)
draw_rectangle_plus(32,176,32+64+textwid+16,176+64,c_gray,c_gray,1,1,0)
draw_text_plus(string(gold),32+64,room_width,176+2,-1,textscl,textscl,0,c_black,1,0)


draw_sprite_ext(S_gold,0,32-4+32,176+4+32,0.5,0.5,0,c_black,0.4)
draw_sprite_ext(S_gold,0,32+32,176+32,0.5,0.5,0,c_white,1)
*/

}