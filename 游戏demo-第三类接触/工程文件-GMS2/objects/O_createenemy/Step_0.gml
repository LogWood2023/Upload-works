/// @description Insert description here
// You can write your code in this editor


if endself=0{
	y+=(992-y)/5
	if abs(992-y)<1
	{y=992;endself=1
		}
}

if endself=1{
	r+=10
	alp+=-8
	if r==75 instance_create_depth(x,y,0,O_enemy_normal,{
		colorprobability : colorprobability,
		HPmax : HPmax
	})
	if alp<=0 instance_destroy()
}


