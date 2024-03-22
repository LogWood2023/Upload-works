/// @description Insert description here
// You can write your code in this editor
depth=-30

value_defult("color",c_white)
value_defult("boom",[])
value_defult("scl",1)

timeformborn=0

dir=random_range(0,360)

if array_length(boom)!=0{
	for(i=0;i<array_length(boom);++i){
		instance_create_depth(x,y,-5,O_debris,{
			sp : boom[i][0],
			spnum : boom[i][1],
			scl : boom[i][2],
			alp : boom[i][3],
			color : color
		})
	}
}

if scl>=1 {O_gun.vshake=15}