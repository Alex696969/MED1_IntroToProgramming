float r = 8.88;
float theta = 0.88;
float OGb = 0;
float OGe = 1;
float NSb = 8;
float NSe = 35;


void setup(){
  size(1200,800);
  background(0);
}

void draw(){
  float colour = random(0,255);
  float colourt = random(0,255);
  float x=r*cos(theta);
  float y=r*sin(theta);
  float Thiicc = map(noise(x),OGb, OGe,NSb,NSe+theta) ;
  
  
  noStroke();
  fill(0,colour,0,colourt);
  ellipse(x+width/2,y+height/2,Thiicc,Thiicc);
  
  theta+=0.08;
  r+=0.08;
}
