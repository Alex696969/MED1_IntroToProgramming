class Flower {
  
                 //variables
  
float r;         //radius of the flower petal
int n_petals;    //number of petals
float x;         //x-pposition of the center of the flower
float y;         //y-position of the center of the flower
int petalColour; //color of petals
float xdir;      //xspeed
float ydir;      //yspeed

Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, float temp_xdir, float temp_ydir){
r=temp_r;
n_petals=temp_n_petals;
x=temp_x;
y=temp_y;
xdir=temp_xdir;
ydir=temp_ydir;
}
void display(){
  
  float ballX;
  float ballY;
  
   int red=int((( width-x)/( width+x))*255);     // (opposite)changing RED colour depending on x_value
   int green=int((y/height)*255);                // changing GREEN colour depending on y_value
   int blue=int(((x+y)/( width+height)*255));    // changing BLUE colour depending on x and y_value
   int petalColour=color(red,green,blue);

  fill(petalColour);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {

  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  stroke(#000000);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
  fill(#FF8400);
  noStroke();
  ellipse(x,y,r*0.9,r*0.9);
  fill(200,200,0);
  ellipse(x,y,r*0.6,r*0.6);
  fill(#AEA6FC);
  ellipse(x,y,r*0.3,r*0.3);
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
}
}
