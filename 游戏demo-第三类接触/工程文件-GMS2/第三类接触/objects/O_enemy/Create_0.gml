/// @description Insert description here
// You can write your code in this editor

randomize();

if variable_instance_exists(id,"colorprobability")==false
	variable_instance_set(id,"colorprobability",0.25)

color=c_white
switch irandom_range(1,3/(1-colorprobability)){
	case 1:{color=c_aqua;break;}
	case 2:{color=c_red;break;}
	case 3:{color=c_yellow;break;}
}

shake=0
shild=0

showcolor1=merge_color(c_white,color,0.5)
showcolor=merge_color(c_white,color,0.5)

timefromborn=0

value_defult("HPmax",irandom_range(1,3))
value_defult("v",random_range(0.5,1))
value_defult("value",HPmax*10)


atk=1

HP=HPmax

hurtlist=[]

colbox=64

