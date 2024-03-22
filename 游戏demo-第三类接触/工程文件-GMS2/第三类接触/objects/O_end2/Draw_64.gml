/// @description Insert description here
// You can write your code in this editor


draw_rectangle_plus(0,0,room_width,room_height,c_white,c_white,timefromborn/30,timefromborn/30,0)

if timefromborn>150{
	draw_sprite_ext(S_skilltree2,8,room_width/2+100-192,room_height/2-64*3+32+min(32,32*(timefromborn-150)/30),3,3,0,c_white,(timefromborn-150)/30)
}


if timefromborn>120{
	draw_sprite_ext(S_skilltree2,7,room_width/2-400,room_height/2-64*3+32+min(32,32*(timefromborn-120)/30),3,3,0,c_white,(timefromborn-120)/30)
}


if timefromborn>180
{	value_defult("textscl",0)
	if textscl==0 music_play(victory,1)
	textscl+=(30-textscl)/10
	draw_text_plus("第三类接触 接触完成",0,room_width,room_height/4,-1,min(1,(textscl)/30),1,0,c_black,1,1)
}


if timefromborn>200{
draw_text_plus("点击以重新开始游戏",room_width/2,99999999,room_height*3/4,-1,0.4,0.4,0,c_black,(timefromborn-200)/30,0)
if mouse_check_button(mb_any) {game_restart()}
}