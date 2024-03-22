/// @description Insert description here
// You can write your code in this editor




draw()
target=instance_col(O_enemy,1)
if target!=0&&instance_exists(target){
	x1=variable_instance_get_names(target)
	kick()
}