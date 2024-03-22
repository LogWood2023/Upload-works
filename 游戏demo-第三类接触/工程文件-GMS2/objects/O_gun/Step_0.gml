/// @description Insert description here
// You can write your code in this editor
if exist_botton("reloadkick")==0{
dir=point_direction(x,y,mouse_x,mouse_y)
if dir<120 dir=120
if dir>240 dir=240

if keyboard_check(ord("W")){y+=-movespeed}
if keyboard_check(ord("S")){y+=movespeed}
if y>room_height-360 y=room_height-360
if y<300 y=300
}


if shotspeed>0 shotspeed+=-1

shot()

function reloadkickstart(){
		function reloadbotbluestart(){color=c_aqua;x1=x;y1=y}
		function reloadbotredstart(){color=c_red;x1=x;y1=y}
		function reloadbotyellowstart(){color=c_yellow;x1=x;y1=y}
		function reloadbotwhitestart(){color=c_white;x1=x;y1=y;}
		function reloadtypetTstart(){type=1;x1=x;y1=y;}
		function reloadtypetOstart(){type=2;x1=x;y1=y;}
		function reloadtypetUstart(){type=3;x1=x;y1=y;}
		function reloadtypetCstart(){type=4;x1=x;y1=y;}
		function reloadtypetHstart(){type=5;x1=x;y1=y;}
		function reloadbutstep(){
			switch color{
				case c_aqua:{colornum=0;break}
				case c_red:{colornum=1;break}
				case c_yellow:{colornum=2;break}
				case c_white:{colornum=3;break}
			}num=O_gun.bulletstore[colornum]
			if num>0||num==-1
			{
			draw_sprite_ext(S_bullet_energy,1,x+128+random_range(-5,5),y+128+random_range(-5,5),1,1,0,color,1)
			if mouse==0{
			draw_sprite_ext(S_bullet_energy,0,x+128,y+128,1,1,0,merge_color(c_white,color,0.3),1)}
			if mouse==1
			draw_sprite_ext(S_bullet_energy,0,x+128,y+128,1,1,0,merge_color(c_white,color,0.1),1)
			if abs(mouse)==2
			music_play(pressbotton)
			if abs(mouse)>1&&abs(mouse)<5{
			x=mouse_x-128;y=mouse_y-128;
			draw_sprite_ext(S_bullet_energy,0,x+128,y+128,1,1,0,merge_color(merge_color(c_white,color,0.1),c_black,0.4),1)}
			else {x=x1;y=y1;}
			if abs(mouse)==4&&point_distance(mouse_x,mouse_y,room_width/2,room_height/2)<=400{
				target=array_t2d(O_gun.bullet,c_black)
					if target!=-1{
						music_play(reloading,0.7)
						O_gun.bullet[target]=color
						O_gun.bullettype[target]=O_gun.changetype
						if num!=-1 O_gun.bulletstore[colornum]+=-1
						if O_gun.bulletstore[3+O_gun.changetype]!=-1 O_gun.bulletstore[3+O_gun.changetype]+=-1
					}
			}
			if num!=-1{
			draw_circle_plus(x+128-64-4,y+128+64+4,24,merge_color(c_white,color,0.3),1)
			draw_text_plus(string(num),x+128-64-48-4,x+128-64+48-4,y+128+64-20+4,-1,0.2,0.2,0,c_gray,1,1)}
			}
			else 
			{x=x1;y=y1;draw_sprite_ext(S_bullet_energy,0,x+128,y+128,1,1,0,merge_color(merge_color(c_white,color,0.1),c_black,0.6),1)}}
			
			function reloadbullettypestep(){
				num=O_gun.bulletstore[3+type]
				if num>0||num==-1{
				draw_sprite_ext(S_bulletlogo,0,x+60,y+68,1,1,0,c_black,0.4)
				if mouse==0 {draw_sprite_ext(S_bulletlogo,0,x+64,y+64,1,1,0,c_gray,1)}
				if mouse==1 {draw_sprite_ext(S_bulletlogo,0,x+64,y+64,1,1,0,c_white,1)}
				if abs(mouse)>1&&abs(mouse)<5{draw_sprite_ext(S_bulletlogo,0,x+64,y+64,1,1,0,merge_color(c_black,c_white,0.8),1)}
				draw_sprite_ext(S_bulletlogo,type,x+60,y+68,1.3,1.3,0,c_black,0.4)
				if abs(mouse)==4{
				music_play(pressbotton2,0.7)
				O_gun.changetype=type}
				if O_gun.changetype==type{
				draw_sprite_ext(S_bulletlogo,type,x+64,y+64,1.3,1.3,0,c_white,1)}
				else{
				draw_sprite_ext(S_bulletlogo,type,x+64,y+64,1.3,1.3,0,c_gray,1)}
				if num!=-1{
				draw_circle_plus(x-36,y+68,24,c_black,0.4)
				draw_circle_plus(x-32,y+64,24,c_white,1)
				draw_text_plus(string(num),x-32-128,x-32+128,y+64-20,-1,0.2,0.2,0,c_gray,1,1)}
				}
				else
				{draw_sprite_ext(S_bulletlogo,0,x+64,y+64,1,1,0,c_black,0.6)
					if O_gun.changetype==type O_gun.changetype=1}
			}
			function react(){
				chosecolor1=0.5
				if mouse=1 {chosecolor1=0.8}
				if abs(mouse)>=2&&abs(mouse)<5 {chosecolor1=0.65}
				if abs(mouse)==4{
				music_play(pressbotton2,0.5)
				for(i=0;i<array_length(O_gun.bullet);++i){O_gun.bullet[i]=c_black;O_gun.bullettype[i]=0}}
				chosecolor=merge_color(c_black,c_white,chosecolor1)
				draw_rectangle_plus(x-8,y+8,x+wid-8,y+hei+8,c_black,c_black,0.3,0.3,"I")
				draw_rectangle_plus(x,y,x+wid,y+hei,chosecolor,chosecolor,1,1,"I")
				draw_sprite_ext(S_otherlogo,0,x-6,y+6,1,1,0,c_black,0.3)
				draw_sprite_ext(S_otherlogo,0,x,y,1,1,0,c_white,1)
				draw_text_plus("重装",x+128,x+320,y+6,-1,0.6,0.6,0,c_black,1,1)
			}
	cre_botton("reloadblue",room_width*3/4-128,room_height/4-128,256,256,-101,reloadbotbluestart,reloadbutstep,)
	cre_botton("reloadred",room_width*3/4-128,room_height*2/4-128,256,256,-101,reloadbotredstart,reloadbutstep,)
	cre_botton("reloadyellow",room_width*3/4-128,room_height*3/4-128,256,256,-101,reloadbotyellowstart,reloadbutstep,)
	cre_botton("reloadwhite",room_width*3/4-128*3,room_height*3/4,256,256,-101,reloadbotwhitestart,reloadbutstep,)
	cre_botton("reloadT",room_width*3/4+128*2,room_height/2-96*5,128,128,-101,reloadtypetTstart,reloadbullettypestep,)
	cre_botton("reloadO",room_width*3/4+128*2,room_height/2-96*3,128,128,-101,reloadtypetOstart,reloadbullettypestep,)
	cre_botton("reloadU",room_width*3/4+128*2,room_height/2-96*1,128,128,-101,reloadtypetUstart,reloadbullettypestep,)
	cre_botton("reloadC",room_width*3/4+128*2,room_height/2+96*1,128,128,-101,reloadtypetCstart,reloadbullettypestep,)
	cre_botton("reloadH",room_width*3/4+128*2,room_height/2+96*3,128,128,-101,reloadtypetHstart,reloadbullettypestep,)
	cre_botton("react",room_width*1/8,room_height/8+64,320,128,-101,,react,)
}



function reloadkickfell(){	
	if keyboard_check_pressed(vk_escape){instance_destroy()}
	draw_rectangle_plus(0,0,wid,hei,c_black,c_black,0.5,0.5,"I")
	draw_sprite_ext(S_gunbarrel,1,room_width/2,room_height/2,1.5,1.5,0,c_white,1)
	bulletmax=array_length(master.bullet)
	for(i=0;i<bulletmax;++i){
		if master.bullet[i]==c_black{
			draw_sprite_ext(S_bullet_energy,2,room_width/2-800+1000*i/bulletmax,room_height/2,1.4,1.4,0,c_black,0.5)
			draw_sprite_ext(S_bullet_energy,0,room_width/2-800+1000*i/bulletmax,room_height/2,1.4,1.4,0,c_white,0.5)}
			else {
			draw_sprite_ext(S_bullet_energy,2,room_width/2-800+1000*i/bulletmax,room_height/2,1.4,1.4,0,c_black,0.5)
			draw_sprite_ext(S_bullet_energy,1,room_width/2-800+1000*i/bulletmax+random_range(-5,5),room_height/2+random_range(-5,5),1,1,0,master.bullet[i],1)
			draw_sprite_ext(S_bullet_energy,0,room_width/2-800+1000*i/bulletmax,room_height/2,1.4,1.4,0,merge_color(c_white,master.bullet[i],0.3),1)
			draw_circle_plus(room_width/2-800+1000*i/bulletmax-96,room_height/2+96,32,merge_color(c_white,master.bullet[i],0.3),1)
			draw_sprite_ext(S_bulletlogo,master.bullettype[i],room_width/2-800+1000*i/bulletmax-96-4,room_height/2+96+4,0.7,0.7,0,c_black,0.4)
			draw_sprite_ext(S_bulletlogo,master.bullettype[i],room_width/2-800+1000*i/bulletmax-96,room_height/2+96,0.7,0.7,0,c_white,1)
	}
	}
	
	draw_sprite_ext(S_gunbarrel,0,room_width/2,room_height/2,1.5,1.5,0,c_white,1)
	//draw_circle_plus(room_width/2,room_height/2,360,c_red,0.5)
	draw_sprite_ext(S_remindercircle,0,room_width/2,room_height/2,(860+50*sin(get_timer()/500000))/1024,(860+50*sin(get_timer()/500000))/1024,get_timer()/50000,c_white,1)
}


if keyboard_check_pressed(ord("R")){
	if exist_botton("reloadkick")!=0
		delate_botton("reloadkick")
	else
		cre_botton("reloadkick",0,0,room_width,room_height,-100,reloadkickstart,reloadkickfell,)}
		
function furnacestart(){maketarget=0;maketime=0;maketime1=500}
function furnacestep(){
	function furnchose(){
		value_defult("chosetype",0)
		function furchoseO(){num=2;cost=10;}
		function furchoseU(){num=3;cost=5;}
		function furchoseC(){num=4;cost=3;}
		function furchoseH(){num=5;cost=1;}
		function furcho(){
			light=0
			if mouse==1 light=0.6
			if O_gun.furnacelock[num]!=-1{
			if abs(mouse)>1&&abs(mouse)<5 light=0.4
			if abs(mouse)==4 {master.chosetype=num;master.getnum=cost;music_play(powerup01,0.5)}
			draw_sprite_ext(S_bulletlogo,num,x+64,y+64,1,1,0,merge_color(c_black,c_white,light),1)}
			else
			draw_sprite_ext(S_bulletlogo,num,x+64,y+64,1,1,0,merge_color(c_black,c_red,0.4),1)
			if O_gun.furnacelock[num]==-1
			draw_sprite_ext(S_skilltree1,3,x,y,1,1,0,c_white,0.8)
			draw_rectangle_plus(x+64-4,y+96+4,x+wid-4,y+hei+4,c_black,c_black,0.4,0.4,"I")
			draw_rectangle_plus(x+64,y+96,x+wid,y+hei,c_white,c_white,1,1,"I")
			
			


			draw_text_plus("X"+string(cost),x+64-300,x+wid+300,y+96-4,-1,0.2,0.2,0,c_black,1,1)
			
		}
		draw_rectangle_plus(x-4,y+4,x+wid-4,y+hei+4,c_black,c_black,0.4,0.4,0)
		draw_rectangle_plus(x,y,x+wid,y+hei,c_gray,c_gray,1,1,0)
		if (mouse_x<x||mouse_x>x+wid||mouse_y<y||mouse_y>y+hei)&&mouse_check_button_pressed(mb_left) instance_destroy()
		if chosetype!=0{
			master.maketarget=chosetype
			master.getnumber=getnum
			master.maketime=0
			instance_destroy()
		}
		cre_botton("furchoseO",x,y+128*0,128,128,-51,furchoseO,furcho,)
		cre_botton("furchoseU",x,y+128*1,128,128,-51,furchoseU,furcho,)
		cre_botton("furchoseC",x,y+128*2,128,128,-51,furchoseC,furcho,)
		cre_botton("furchoseH",x,y+128*3,128,128,-51,furchoseH,furcho,)
	}
	light=0
	if mouse==1 light=0.6
	if abs(mouse)>1&&abs(mouse)<5 light=0.4
	if maketime<maketime1{
	if abs(mouse)==2{
		cre_botton("furchose",x,y+128,128,128*4,-50,,furnchose,);music_play(pressbotton2,0.5)
	}
	draw_sprite_ext(S_bulletlogo,0,x+64-4,y+64+4,1,1,0,c_black,0.4)
	draw_sprite_ext(S_bulletlogo,0,x+64,y+64,1,1,0,merge_color(c_gray,c_white,light),1)
	if maketarget==0{
	draw_sprite_ext(S_skilltree2,0,x-4,y+4,1,1,0,c_black,0.4)
	draw_sprite_ext(S_skilltree2,0,x,y,1,1,0,merge_color(c_gray,c_white,light),1)}
	else{
		{maketime+=1
		draw_sprite_ext(S_bulletlogo,maketarget,x+64-4,y+64+4,1,1,0,c_black,0.4)
		draw_sprite_ext(S_bulletlogo,maketarget,x+64,y+64,1,1,0,merge_color(c_gray,c_white,light),1)
		draw_circle_ring(x+64,y+64,16,32,90,90+360*maketime/maketime1,c_white,1)}
	}}
	else{
		if maketime=maketime1 {music_play(finish,1);++maketime}
		draw_sprite_ext(S_bulletlogo,0,x+64-4,y+64+4,1,1,0,c_black,0.4)
		draw_sprite_ext(S_bulletlogo,0,x+64,y+64,1,1,0,merge_color(c_gray,c_white,light),1)
		draw_sprite_ext(S_bulletlogo,maketarget,x+64,y+64,1,1,0,c_white,1)
		if abs(mouse)==2{
			music_play(coin01,0.5)
			O_gun.bulletstore[3+maketarget]+=getnumber
			maketarget=0
			maketime=0
		}
	}
}

for(i=0;i<furnacenum;++i){
cre_botton("furnace"+string(i),512+64+144*i,32,128,128,-50,furnacestart,furnacestep,)}

if vshake>0 {vshake+=-1}
view_xport[0]=power(-1,irandom(100))*vshake
view_yport[0]=power(-1,irandom(100))*vshake