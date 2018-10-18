class Heart {
  
float d;        //diameter of arcs(height and width)
float x;        //x-position of center of heart
float y;        //y-position of center of heart
float xdir;     //movement on the x-axis
float ydir;     //movement on the y-axis

Heart(float temp_d, float temp_x, float temp_y, float temp_xdir, float temp_ydir){
  d=temp_d;
  x=temp_x ;
  y=temp_y ;
  xdir=temp_xdir;
  ydir=temp_ydir;
}

void display(){
  
  int d=int((((width+height)-(x+y))/(( width+height)+(x+y))*255));
    
  noStroke();
  fill(#FF0000);
  arc((x-(d/2)),y,d,d,-PI-QUARTER_PI/2,0);
  arc((x+(d/2)),y,d,d,-PI,QUARTER_PI/2);
  triangle(x-(d*0.96),(y+(d*0.2)),(x+(d*0.96)),(y+(d*0.2)),x,(y+(d*1.8)));
  rect((x-(d*0.965)),y,(d*1.92),(d*0.2));

  noStroke();
  fill(#FF006F);
  arc((x-((d*0.9)/2)),y,(d*0.9),(d*0.9),-PI-QUARTER_PI/2,0);
  arc((x+((d*0.9)/2)),y,(d*0.9),(d*0.9),-PI,QUARTER_PI/2);
  triangle(x-((d*0.9)*0.96),(y+((d*0.9)*0.2)),(x+((d*0.9)*0.96)),(y+((d*0.9)*0.2)),x,(y+((d*0.9)*1.8)));
  rect((x-((d*0.9)*0.965)),y,((d*0.9)*1.92),((d*0.9)*0.2));

  noStroke();
  fill(#FF00DE);
  arc((x-((d*0.8)/2)),y,(d*0.8),(d*0.8),-PI-QUARTER_PI/2,0);
  arc((x+((d*0.8)/2)),y,(d*0.8),(d*0.8),-PI,QUARTER_PI/2);
  triangle(x-((d*0.8)*0.96),(y+((d*0.8)*0.2)),(x+((d*0.8)*0.96)),(y+((d*0.8)*0.2)),x,(y+((d*0.8)*1.8)));
  rect((x-((d*0.8)*0.965)),y,((d*0.8)*1.92),((d*0.8)*0.2));
  
  noStroke();
  fill(#BF25B0);
  arc((x-((d*0.7)/2)),y,(d*0.7),(d*0.7),-PI-QUARTER_PI/2,0);
  arc((x+((d*0.7)/2)),y,(d*0.7),(d*0.7),-PI,QUARTER_PI/2);
  triangle(x-((d*0.7)*0.96),(y+((d*0.7)*0.2)),(x+((d*0.7)*0.96)),(y+((d*0.7)*0.2)),x,(y+((d*0.7)*1.8)));
  rect((x-((d*0.7)*0.965)),y,((d*0.7)*1.92),((d*0.7)*0.2));
  
  noStroke();
  fill(#7E25BF);
  arc((x-((d*0.6)/2)),y,(d*0.6),(d*0.6),-PI-QUARTER_PI/2,0);
  arc((x+((d*0.6)/2)),y,(d*0.6),(d*0.6),-PI,QUARTER_PI/2);
  triangle(x-((d*0.6)*0.96),(y+((d*0.6)*0.2)),(x+((d*0.6)*0.96)),(y+((d*0.6)*0.2)),x,(y+((d*0.6)*1.8)));
  rect((x-((d*0.6)*0.965)),y,((d*0.6)*1.92),((d*0.6)*0.2));
  
  noStroke();
  fill(#3825BF);
  arc((x-((d*0.5)/2)),y,(d*0.5),(d*0.5),-PI-QUARTER_PI/2,0);
  arc((x+((d*0.5)/2)),y,(d*0.5),(d*0.5),-PI,QUARTER_PI/2);
  triangle(x-((d*0.5)*0.96),(y+((d*0.5)*0.2)),(x+((d*0.5)*0.96)),(y+((d*0.5)*0.2)),x,(y+((d*0.5)*1.8)));
  rect((x-((d*0.5)*0.965)),y,((d*0.5)*1.92),((d*0.5)*0.2));
  
  noStroke();
  fill(#03ECFF);
  arc((x-((d*0.4)/2)),y,(d*0.4),(d*0.4),-PI-QUARTER_PI/2,0);
  arc((x+((d*0.4)/2)),y,(d*0.4),(d*0.4),-PI,QUARTER_PI/2);
  triangle(x-((d*0.4)*0.96),(y+((d*0.4)*0.2)),(x+((d*0.4)*0.96)),(y+((d*0.4)*0.2)),x,(y+((d*0.4)*1.8)));
  rect((x-((d*0.4)*0.965)),y,((d*0.4)*1.92),((d*0.4)*0.2));
  
  noStroke();
  fill(#03FF98);
  arc((x-((d*0.3)/2)),y,(d*0.3),(d*0.3),-PI-QUARTER_PI/2,0);
  arc((x+((d*0.3)/2)),y,(d*0.3),(d*0.3),-PI,QUARTER_PI/2);
  triangle(x-((d*0.3)*0.96),(y+((d*0.3)*0.2)),(x+((d*0.3)*0.96)),(y+((d*0.3)*0.2)),x,(y+((d*0.3)*1.8)));
  rect((x-((d*0.3)*0.965)),y,((d*0.3)*1.92),((d*0.3)*0.2));
  
  noStroke();
  fill(#03FF15);
  arc((x-((d*0.2)/2)),y,(d*0.2),(d*0.2),-PI-QUARTER_PI/2,0);
  arc((x+((d*0.2)/2)),y,(d*0.2),(d*0.2),-PI,QUARTER_PI/2);
  triangle(x-((d*0.2)*0.96),(y+((d*0.2)*0.2)),(x+((d*0.2)*0.96)),(y+((d*0.2)*0.2)),x,(y+((d*0.2)*1.8)));
  rect((x-((d*0.2)*0.965)),y,((d*0.2)*1.92),((d*0.2)*0.2));
  
  noStroke();
  fill(#FFE603);
  arc((x-((d*0.1)/2)),y,(d*0.1),(d*0.1),-PI-QUARTER_PI/2,0);
  arc((x+((d*0.1)/2)),y,(d*0.1),(d*0.1),-PI,QUARTER_PI/2);
  triangle(x-((d*0.1)*0.96),(y+((d*0.1)*0.2)),(x+((d*0.1)*0.96)),(y+((d*0.1)*0.2)),x,(y+((d*0.1)*1.8)));
  rect((x-((d*0.1)*0.965)),y,((d*0.1)*1.92),((d*0.1)*0.2));
}
void move(){
  
  x=x+xdir;
  y=y+ydir;
  
  if (x>width || x<0 ){
    xdir=-xdir;
  }
  if (y>height || y<0 ){
    ydir=-ydir;
  }
}}
