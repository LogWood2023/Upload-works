/// @description Insert description here
// You can write your code in this editor

if abs(mouse)>=4 mouse=0

if mouse_check_button_released(mb_right) mouse=5
if mouse_check_button_released(mb_left) mouse=-5

if between(x,mouse_x,x+wid)==1&&between(y,mouse_y,y+hei)==1{
	if mouse==0 mouse=1
	if mouse=2 mouse=3;if mouse=-2 mouse=-3
	if mouse_check_button_pressed(mb_right) mouse=2
	if mouse_check_button_pressed(mb_left) mouse=-2
	if mouse_check_button_released(mb_right) mouse=4
	if mouse_check_button_released(mb_left) mouse=-4
	for (var i=0;i<instance_number(O_botton);++i)
	{	var iobject=instance_find(O_botton,i)
		var ii=iobject.mouse
		if ii!=0&&(iobject.depth<depth|(iobject.depth==depth&&iobject.id>id))&&iobject.id!=id
		{mouse=0}
	}
}
else if abs(mouse)!=2&&abs(mouse)!=3 mouse=0


if instance_exists(master)==0{
	instance_destroy()
}
