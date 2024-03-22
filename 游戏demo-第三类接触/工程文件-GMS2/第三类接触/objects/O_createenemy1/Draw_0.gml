/// @description Insert description here
// You can write your code in this editor




function maketie(){
	tie1=[[]]
	for(i=0;i<16;i++){
	tie1[i][0]=x;tie1[i][1]=y}
	return tie1}
value_defult("tie",maketie())
if endself==0{
	for(i=array_length(tie)-1;i>0;i+=-1){
		tie[i][0]=tie[i-1][0]
		tie[i][1]=tie[i-1][1]}
	tie[0][0]=x;tie[0][1]=y;
		for(i=0;i<array_length(tie);++i){
		draw_circle_plus(tie[i][0],tie[i][1],r*(array_length(tie)-i)/array_length(tie),color,alp/100)}
		
}else
draw_circle_plus(x,y,r,color,alp/100)

