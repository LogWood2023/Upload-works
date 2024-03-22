/// @description Insert description here
// You can write your code in this editor

if beattack=1 {
	music_play(hit1,0.5)
	HP+=-1
	shake=30
	beattack=2
}

if shake>0 shake+=-1

if shake==0&&beattack=2 beattack=0




if HP<=0
{
	HP=1
	instance_create_depth(x,y,-1000,O_end3)
}