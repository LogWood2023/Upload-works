/// @description Insert description here
// You can write your code in this editor

function tiearray()
{
	for(var i=0;i<300;++i){
		tie[i][0]=x
		tie[i][1]=y
	}
	return tie
}

showx=x
showy=y+sin(timefromborn/30)*10

if variable_instance_exists(id,"tie")==false
	variable_instance_set(id,"tie",tiearray())

for (var i=1;i<array_length(tie);++i){
	tie[i][0]=tie[i-1][0]
	tie[i][1]=tie[i-1][1]
}

tie[0][0]=showx
tie[0][1]=showy

x1=tie[array_length(tie)-1][0]
x2=tie[array_length(tie)-1][1]

draw_sprite_ext(S_enemy_kind,0,tie[array_length(tie)-1][0]+power(-1,round(shake/2))*shake/3,tie[array_length(tie)-1][1],1,1,-timefromborn*atk/2,showcolor,1)
draw_sprite_ext(S_enemy_kind,2,showx-2,showy+2,1,1,0,c_black,0.4)
draw_sprite_ext(S_enemy_kind,2,showx,showy,1,1,0,showcolor,1)

if HP>=2 draw_sprite_ext(S_enemy_kind,3,showx,showy,1,1,0,showcolor,1)
if HP>=3 draw_sprite_ext(S_enemy_kind,4,showx,showy,1,1,0,showcolor,1)

if shake =30{
	if HP=2 instance_create_depth(x,y,-5,O_debris,{sp : S_enemy_debris,spnum : 4,color : showcolor1})
	if HP=1 instance_create_depth(x,y,-5,O_debris,{sp : S_enemy_debris,spnum : 3,color : showcolor1})
}

draw_circle_plus(x,y,80,c_white,0.7*shild/30)
