/// @description Insert description here
// You can write your code in this editor

dir=180
depth=-1

function defultshot(){
	if kick==-2&&shotspeed=0&&bullet[0]!=c_black{
		music_play(shoot1,0.3)
	switch bullettype[0]{
	case 1:{ instance_create_depth(x+lengthdir_x(200,dir),y+lengthdir_y(200,dir),0,O_bullet,{
		atk : 1,
		color : bullet[0],
		flyspeed : bulspeed,
		dir : dir,
	});break}
	case 2:{ 
		function bulletO_draw(){
			function maketie(){
				tie1=[[]]
				for(i=0;i<8;i++){
					tie1[i][0]=x;tie1[i][1]=y
				}
				return tie1
			}
			value_defult("tie",maketie())
				for(i=array_length(tie)-1;i>0;i+=-1){
					tie[i][0]=tie[i-1][0]
					tie[i][1]=tie[i-1][1]
				}
				tie[0][0]=x;tie[0][1]=y;
				for(i=0;i<array_length(tie);++i){
					if i%2==0  
					draw_circle_plus(tie[i][0],tie[i][1],16,c_purple,0.5)
				}
			draw_sprite_ext(S_bullet,0,x,y,scl,scl,timefromborn*15,color,1)
		}
		function bulletO_move(){
			Otarget=-1;Odis=9999
			if instance_exists(O_enemy)
			for(i=0;i<instance_number(O_enemy);++i){
				Otarget1=instance_find(O_enemy,i)
				if Otarget1.color==color&&point_distance(x,y,Otarget1.x,Otarget1.y)<Odis
					Otarget=Otarget1
				}
			if Otarget!=-1{
				Odir=point_direction(x,y,Otarget.x,Otarget.y)
					if dir>Odir&&abs(dir-Odir)>2 dir+=-2
					else if dir<Odir&&abs(dir-Odir)>2 dir+=2
					else if abs(dir-Odir)<=2 dir=Odir}
			x+=lengthdir_x(flyspeed,dir)
			y+=lengthdir_y(flyspeed,dir)}
		instance_create_depth(x+lengthdir_x(200,dir),y+lengthdir_y(200,dir),0,O_bullet,{
		atk : 1,
		color : bullet[0],
		flyspeed : bulspeed,
		dir : dir,
		move : bulletO_move,
		draw : bulletO_draw
	});break}
	case 3:{ 
		function bulletU_move(){
			x+=lengthdir_x(flyspeed,dir)
			y+=lengthdir_y(flyspeed,dir)
			changev=compute_g(flyspeed,dir,0.5)
			flyspeed=changev[0]
			dir=changev[1]
		}
		function bulletU_destory(){
			music_play(damage1,0.3)
			instance_create_depth(x,y,0,O_boom,{
				color : color,
				scl : 0.4*scl})
			if random_range(0,100)>20{
			instance_create_depth(x,y,0,O_bullet,{
			atk : 1,
			color : color,
			flyspeed : flyspeed,
			dir : 90,
			scl : 2,
			colbox : 64,
			move : bulletU_move,
			destory : bulletU_destory,
			bulletU_destory : bulletU_destory,
			bulletU_move : bulletU_move
	})}
	}
		instance_create_depth(x+lengthdir_x(200,dir),y+lengthdir_y(200,dir),0,O_bullet,{
		atk : 1,
		color : bullet[0],
		flyspeed : bulspeed,
		dir : dir,
		scl : 2,
		colbox : 64,
		move : bulletU_move,
		destory : bulletU_destory,
		bulletU_destory : bulletU_destory,
		bulletU_move : bulletU_move
	});break}
	case 4:{ 
		for(i=0;i<5;++i){
		instance_create_depth(x+lengthdir_x(200,dir),y+lengthdir_y(200,dir),0,O_bullet,{
		atk : 1,
		color : bullet[0],
		flyspeed : bulspeed,
		dir : dir-20+10*i,
	})};break}
	case 5:{
		function bulletH_draw(){
			function maketie(){
				tie1=[[]]
				for(i=0;i<16;i++){
					tie1[i][0]=x;tie1[i][1]=y
				}
				return tie1
			}
			value_defult("tie",maketie())
				for(i=array_length(tie)-1;i>0;i+=-1){
					tie[i][0]=tie[i-1][0]
					tie[i][1]=tie[i-1][1]
				}
				tie[0][0]=x;tie[0][1]=y;
				for(i=0;i<array_length(tie);++i){
					draw_circle_plus(tie[i][0],tie[i][1],16*(array_length(tie)-i)/array_length(tie),color,0.5)
				}
			draw_sprite_ext(S_bullet,0,x,y,scl,scl,timefromborn*15,color,1)
		}
		function bulletH_kick(){
			if instance_exists(instance_col(O_enemy))
			array_insert(instance_col(O_enemy).hurtlist,array_length(instance_col(O_enemy).hurtlist),[color,atk])
		}
		instance_create_depth(x+lengthdir_x(200,dir),y+lengthdir_y(200,dir),0,O_bullet,{
		atk : 1,
		color : bullet[0],
		flyspeed : bulspeed,
		dir : dir,
		kick : bulletH_kick,
		draw : bulletH_draw
	});break}
	}
	array_delete(bullet,0,1)
	array_insert(bullet,array_length(bullet),c_black)
	array_delete(bullettype,0,1)
	array_insert(bullettype,array_length(bullettype),0)
	shotspeed=shotspeed1
	}
}

shotspeed=0

kick=0

function emptybullet(){
	for(i=0;i<bulletmax;++i){emptybullet1[i]=c_black}
	return emptybullet1}
	

function emptybullettype(){
	for(i=0;i<bulletmax;++i){emptybullettype1[i]=0}
	return emptybullettype1}

value_defult("shot",defultshot)
value_defult("shotspeed1",5)
value_defult("bulspeed",30)
value_defult("bulletmax",5)
value_defult("bullet",emptybullet())
value_defult("bullettype",emptybullettype())
value_defult("movespeed",8)
value_defult("furnacenum",1)
value_defult("furnacelock",[0,0,1,-1,-1,-1])
value_defult("bulletreturn",50)

bulletstore=[-1,-1,-1,0,-1,0,0,0,0]


function kickfell(){
	master.kick=mouse
}

changetype=1

cre_botton("shotcheak",0,0,room_width,room_height,10,,kickfell,)

y=room_height-320-64

vshake=0