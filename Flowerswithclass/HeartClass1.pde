class Heart {
  
float d;        //diameter of arcs(height and width)
float x;        //x-position of center of heart
float y;        //y-position of center of heart

Heart(float temp_d, float temp_x, float temp_y){
  d=temp_d;
  x=temp_x;
  y=temp_y;
}

void display(){
    
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
  
  
}}
