class JesusChrist {
  
  float x,y,dx,dy,w,h;
  
  JesusChrist() {
    x=500;
    y=600;
    w=120;
    h=200;
    dx=0;
  }
  
  void display() {
    image (JesusChrist,x,y,w,h);
  }
  
  void act() {
    dx=0;
    if(akey&&x>0){
      dx=-15;
    }
    if(dkey&&x<width-w){
      dx=+15;
    }
    x+=dx;
  }
  
}
