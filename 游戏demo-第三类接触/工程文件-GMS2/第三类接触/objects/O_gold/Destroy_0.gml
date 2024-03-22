/// @description Insert description here
// You can write your code in this editor





for(i=0;i<32;++i){
	instance_create_depth(x,y,-5,O_debris,{
		sp : S_cycle,
		spnum : 0,
		scl : random_range(4,12)/1280,
		alp : random_range(0.5,1),
		color : merge_color(c_white,c_black,random_range(0.2,0.8))
		})
	}

music_play(coin01,0.5)
O_wall.gold+=value