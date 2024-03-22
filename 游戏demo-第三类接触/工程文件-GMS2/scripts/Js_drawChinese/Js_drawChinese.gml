// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
globalvar Font;
Font =font_add("HYDianYaTiJ.ttf",128,0, 0, 0, 65535)
draw_set_font(Font);
//font_add("你内含文件里面的字体名字",设定字体大小,0,0,0,65535)
*/
function cutstring(str,x1,x2,xscale)
{	
	cutstring_str1=""
	cutstring_i2=1;cutstring_i1=1;
	for(;cutstring_i2+cutstring_i1<=string_length(str);++cutstring_i1){
		cutstring_str2=string_copy(str,cutstring_i2,cutstring_i1)
		cutstring_len=string_width(cutstring_str2)*xscale
		cutstring_w=abs(x1-x2)
		if cutstring_len>cutstring_w
		{cutstring_str1+=string_copy(str,cutstring_i2,cutstring_i1)+"\n";
		cutstring_i2+=cutstring_i1;cutstring_i1=1}
	}
	cutstring_str1+=string_copy(str,cutstring_i2,cutstring_i1)+"\n"
	return cutstring_str1
}

function draw_text_plus(str,x1,x2,y1,sep,xscale,yscale,angle,color,alpha,mid){
	if mid=0
	draw_text_ext_transformed_color(x1,y1,cutstring(str,x1,x2,xscale),sep,abs(x2-x1),xscale,yscale,angle,color,color,color,color,alpha)
	else
	draw_text_ext_transformed_color(x1+((x2-x1)-string_width(cutstring(str,x1,x2,xscale))*xscale)/2,y1,cutstring(str,x1,x2,xscale),sep,abs(x2-x1),xscale,yscale,angle,color,color,color,color,alpha)
}/**/