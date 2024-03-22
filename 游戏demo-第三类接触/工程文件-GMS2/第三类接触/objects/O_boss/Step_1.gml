/// @description Insert description here
// You can write your code in this editor
timefromborn+=1

if shake>0 shake+=-1
if shild>0 shild+=-1

if array_length(hurtlist)>0{
	for(i=0;i<array_length(hurtlist);i+=1){
		if hurtlist[i][0]==color||hurtlist[i][0]==c_white||color==c_white{
			HP+=-hurtlist[i][1]
			shake=30}
			else
			shild=30
	}
	array_delete(hurtlist,0,999)
}


showcolor=merge_color(showcolor1,c_red,shake/30)

if O_enemycreatesystem.waveend==1 {instance_destroy()}





