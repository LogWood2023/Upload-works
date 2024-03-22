/// @description Insert description here
// You can write your code in this editor

depth=-11

if timefromborn==1 value=value*1.5

value_defult("targetY",random_range(room_height/3,room_height*2/3))
value_defult("callenemy",0)
value_defult("call",-1)

if abs(y-targetY)>=1 y+=(targetY-y)/10 else y=targetY

if abs(y-targetY)<5{
	if callenemy<0 callenemy+=1
	if callenemy==0 {targetX=random_range(64,room_width*3/4);callenemy=1}
	if callenemy>0 {
		if abs(x-targetX)>=1 x+=(targetX-x)/10 else x=targetX
		if abs(x-targetX)<5 {
			if call==-1 call=audio_play_sound(callenemysound,0,0,music2*0.1)
			callenemy+=1
			if callenemy>=500{
				audio_stop_sound(call)
				call=-1
				callenemy=-50
				instance_create_depth(x,y,-10,O_createenemy,{place : x,placey : y})
			}
		}
	}
}




