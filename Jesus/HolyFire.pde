class HolyFire {
  
  float x,y,h,w,speed,maxSpeed;
  boolean firing;
  
  HolyFire() {
    x=500;
    y=-600;
    w=30;
    h=40;
    speed=0;
    maxSpeed=25;
    firing=false;
  }
    void display() {
    image (HolyFire,x,y,w,h);
  }


  void setStartLocation(float startX, float startY){
    if (firing==false){
    x = startX;
    y = startY;
    firing=true;
  }
  } 
  
  void update() {
    if (firing==true){
      y -= maxSpeed;
    } 
    if(y<-50){
    speed=0;
    firing=false;
  }
  }
  }
