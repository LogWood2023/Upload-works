/// @description Insert description here
// You can write your code in this editor

if O_enemycreatesystem.start!=0{


draw_rectangle_plus(28,36,28+512,36+64,c_black,c_black,0.5,0.5,0)
draw_rectangle_plus(32,32,32+512,32+64,c_gray,c_gray,1,1,0)



for(i=0;i<10;++i){
if i<bulletmax
drawcolor=bullet[i]
else
drawcolor=merge_color(c_black,c_white,0.3)

draw_rectangle_plus(46+4+48*i,40,46+4+36+48*i,40+48,drawcolor,drawcolor,1,1,0)
if i<bulletmax&&bullettype[i]!=0{
draw_sprite_ext(S_bulletlogo,bullettype[i],46+4+18+48*i-32-2+32,40+2+24,0.2,0.2,0,c_black,0.6)
draw_sprite_ext(S_bulletlogo,bullettype[i],46+4+18+48*i-32+32,40+24,0.2,0.2,0,c_white,1)}
}

}