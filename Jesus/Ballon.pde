class Balloon {
  
  float x,y,d,yspeed;
  
  Balloon() {
    x=random(width);
    y=-50;
    d=random(40,100);
    yspeed=random(-0.5,-20.5);
  }
  
  void display() {
    fill(0,0,255,100);
    ellipse (x,y,d,d);
  }
  void respawn(){
    y = 0-d;
    x = random(0,width);
  }
  //if balloon touches the floor = dead
  void collision(){
    if (height < y+d){
      background(255,0,0);
    }
  }
  void move(){
    y = y-yspeed;
    x = x+ random(-2,2);
  }
  
    
}
