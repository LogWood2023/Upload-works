// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cre_botton(
bottonid1,x1,y1,wid,hei,depth1,start1=empty,step1=empty,destory1=empty,
){ if exist_botton(bottonid1)==0
	instance_create_depth(15,30,depth1,O_botton,
							{
								bottonid : bottonid1,
								x : x1,
								y : y1,
								wid : wid,
								hei : hei,
								master : id,
								start : start1,
								step : step1,
								destory : destory1,
							}
							)
}

function value_defult(valuename,defultset){
	var value_defult_i=defultset
	if variable_instance_exists(id,valuename)==false
		variable_instance_set(id,valuename,value_defult_i)
}

function empty(){}

function delate_botton(bottonid1){
	for(delate_botton_i=0;delate_botton_i<instance_number(O_botton);++delate_botton_i){
		delate_botton_tagbotton=instance_find(O_botton,delate_botton_i)
		if delate_botton_tagbotton.bottonid=bottonid1 instance_destroy(delate_botton_tagbotton)
	}
}


function exist_botton(bottonid1){
	delate_botton_ii=0
	for(delate_botton_i=0;delate_botton_i<instance_number(O_botton);++delate_botton_i){
		delate_botton_tagbotton=instance_find(O_botton,delate_botton_i)
		if delate_botton_tagbotton.bottonid=bottonid1 delate_botton_ii+=1
	}
	return delate_botton_ii
}