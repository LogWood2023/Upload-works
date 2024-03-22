// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
function toallinstance(instance,fuc,noself){
	var toallinstance_ii=0
	for(toallinstance_i=0;toallinstance_i<instance_number(instance);++toallinstance_i){
		if noself=0
		toallinstance_ii+=fuc(instance_find(instance,toallinstance_i))
		else if instance_find(instance,toallinstance_i)!=id
			toallinstance_ii+=fuc(instance_find(instance,toallinstance_i))
	}
	return toallinstance_ii
}
*/
function instance_col(instance,noself){
	tagins=instance_nearest(x,y,instance)
	if instance_exists(tagins){
	if point_distance(x,y,tagins.x,tagins.y)<=(colbox+tagins.colbox)*0.8
		return tagins
	else return 0}
	else return 0
	/*
	for(instance_col_i=0;instance_col_i<instance_number(instance);++instance_col_i){
		taginstance=instance_find(instance,instance_col_i)
		if (noself=0||taginstance!=id)&&point_distance(id.x,id.y,taginstance.x,taginstance.y)<=(id.colbox+taginstance.colbox)*0.8&&instance_number(instance)>0
				return taginstance
			else
				return 0
	}*/
}

function compute_g(spe,dir,g){
	if spe>16 var compute_g_v1=spe-0.5 else compute_g_v1=spe
	var compute_g_speedx=lengthdir_x(compute_g_v1,dir)
	var compute_g_speedy=lengthdir_y(compute_g_v1,dir)
	compute_g_speedy+=g
	return [point_distance(0,0,compute_g_speedx,compute_g_speedy),point_direction(0,0,compute_g_speedx,compute_g_speedy)]
}

function array_t2d(array,value){
	array_t2d_ii=-1
	for (array_t2d_i=array_length(array)-1;array_t2d_i>=0;array_t2d_i+=-1){
		if array[array_t2d_i]==value array_t2d_ii=array_t2d_i
	}
	return array_t2d_ii
}

function array_d2t(array,value){
	array_d2t_ii=-1
	for (array_d2t_i=0;array_d2t_i<array_length(array);array_d2t_i+=1){
		if array[array_d2t_i]==value array_d2t_ii=array_d2t_i
	}
	return array_d2t_ii
}

