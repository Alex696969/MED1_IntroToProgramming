PImage JesusChurch;
PImage JesusChrist;
PImage HolyFire;
Balloon[] Balloons = new Balloon[5];

HolyFire hf;
JesusChrist jc;
Balloon b;

boolean wkey, akey, dkey, firing;

void setup(){
  size(1200,800,P2D);
  JesusChurch = loadImage("Jesusbagground.jpg");
  JesusChrist = loadImage("JesusChrist.png");
  HolyFire = loadImage("HolyFire.png");

  jc = new JesusChrist();
  hf = new HolyFire();
  b = new Balloon();
  
  for (int i=0;i<5;i++){
    Balloons[i] = new Balloon();
  }
}


void draw(){
image(JesusChurch,0,0,width,height);
  
 hf.update();
 hf.display();
 jc.display();
 jc.act();
 
 
 
for (int i=0;i<5;i++){
   Balloons[i].display();
   Balloons[i].move();
 }
 
 
 
 
  if(wkey){
  hf.setStartLocation(jc.x,jc.y);
  }

  
  
}

void keyPressed(){
  if(key=='a'||key=='A'||keyCode==LEFT) akey=true;
  if(key=='d'||key=='D'||keyCode==RIGHT) dkey=true;
  if(key=='w'||key=='W'||keyCode==UP) wkey=true;
  
}
  
void keyReleased(){
  if(key=='a'||key=='A'||keyCode==LEFT) akey=false;
  if(key=='d'||key=='D'||keyCode==RIGHT) dkey=false;
  if(key=='w'||key=='W'||keyCode==UP) wkey=false;
}  
