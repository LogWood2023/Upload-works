/// @description Insert description here
// You can write your code in this editor
function randomcolor(){
	switch irandom_range(1,3){
	case 1:{return c_aqua;break;}
	case 2:{return c_red;break;}
	case 3:{return c_yellow;break;}
	}
}

function makecolorlist(){
	colorlist1=[]
	for(i=0;i<4;++i){
		switch irandom_range(1,3){
	case 1:{colorlist1[i]=c_aqua;break;}
	case 2:{colorlist1[i]=c_red;break;}
	case 3:{colorlist1[i]=c_yellow;break;}
	}
	return colorlist1
}
}
value_defult("colorlist",[c_aqua,c_red,c_yellow,c_white])


showx=x
showy=y+sin(timefromborn/30)*10

wingscl+=wingspeed

for(i=0;i<4;++i){
	draw_sprite_ext(S_the_boss2,0,showx,showy,0.7,0.7,90*i-45-90+shake*shake/5,merge_color(colorlist[i],c_black,0.2*i),1)
}

for(i=0;i<6;++i){
	draw_sprite_ext(S_the_boss3,0,showx+power(-1,round(shake/2))*shake/3+lengthdir_x(wingdistance,60*i),showy+lengthdir_y(wingdistance,60*i),0.3,0.3,60*i+wingscl/3,c_white,1)
}

if shake==30{
	color=colorlist[0]
	for(i=0;i<2;i++){
		colorlist[i]=colorlist[i+1]
	}
	colorlist[2]=randomcolor()
}


draw_sprite_ext(S_the_boss,0,showx,showy,0.5,0.5,0,c_white,1)
draw_sprite_ext(S_the_boss,1,showx,showy,0.5,0.5,0,color,1)

