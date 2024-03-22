// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_rectangle_plus(x1,y1,x2,y2,color1,color2,alpha1,alpha2,IorX){
	draw_primitive_begin(pr_trianglestrip)
	if IorX=="I"{
		draw_vertex_color(x1,y1,color1,alpha1)
		draw_vertex_color(x2,y1,color1,alpha1)
		draw_vertex_color(x1,y2,color2,alpha2)
		draw_vertex_color(x2,y2,color2,alpha2)
	}
	else{
		draw_vertex_color(x1,y1,color1,alpha1)
		draw_vertex_color(x2,y1,color2,alpha2)
		draw_vertex_color(x1,y2,color1,alpha1)
		draw_vertex_color(x2,y2,color2,alpha2)
	}
	draw_primitive_end()
}

function draw_circle_plus(x1,y1,r,color,alpha){
	draw_sprite_ext(S_cycle,0,x1,y1,r/640,r/640,0,color,alpha)
}

function draw_circle_ring(x1,y1,r1,r2,cot1,cot2,color,alpha){
	draw_primitive_begin(pr_trianglestrip)
		for(draw_circle_ring_i=cot1;draw_circle_ring_i<=cot2;){
			draw_vertex_color(x1+lengthdir_x(r1,draw_circle_ring_i),y1+lengthdir_y(r1,draw_circle_ring_i),color,alpha);
			draw_vertex_color(x1+lengthdir_x(r2,draw_circle_ring_i),y1+lengthdir_y(r2,draw_circle_ring_i),color,alpha);
			draw_circle_ring_i+=5
			if draw_circle_ring_i>cot2&&draw_circle_ring_i<cot2+5 draw_circle_ring_i=cot2
		}
	draw_primitive_end()
}