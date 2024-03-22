/// @description Insert description here
// You can write your code in this editor


x+=lengthdir_x(v,dir)
y+=lengthdir_y(v,dir)

changev=compute_g(v,dir,0.5)

if x-56*scl<0 x=56*scl
if x+56*scl>room_width x=room_width-56*scl

v=changev[0]
dir=changev[1]

if y+56*scl>room_height {y=room_height-56*scl;v=0}

if point_distance(x,y,mouse_x,mouse_y)<56*scl instance_destroy()