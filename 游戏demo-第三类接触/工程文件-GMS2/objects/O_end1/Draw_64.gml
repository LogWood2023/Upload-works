/// @description Insert description here
// You can write your code in this editor


draw_rectangle_plus(0,0,room_width,room_height,c_white,c_white,timefromborn/30,timefromborn/30,0)

if timefromborn>120
{	value_defult("textscl",0)
	if textscl=0 music_play(victory,1)
	textscl+=(30-textscl)/10
	draw_text_plus("第三类接触 接触完成",0,room_width,room_height/4,-1,min(1,(textscl)/30),1,0,c_black,1,1)
	draw_sprite_ext(S_skilltree2,6,room_width/2-64*3,room_height/2-64*3+64,3,3,0,c_white,(textscl)/30)
}


if timefromborn>170{
draw_text_plus("点击以重新开始游戏",room_width/2,99999999,room_height*3/4,-1,0.4,0.4,0,c_black,(timefromborn-170)/30,0)
if mouse_check_button(mb_any) {game_restart()}
}

audio_stop_all()