Flower myFlower1;
int a_r=int(random(50,80));      //random size of flowers (petals+middle) 
int a_petals=int(random(6,17));  //random number of petals (6-17)
float a_x=random(0,1600);        //random x-value starting point
float a_y=random(0,900);         //random y-value starting point
float a_xdir=random(1,2);        //random speed 
float a_ydir=random(1,2);

Flower myFlower2;
int b_r=int(random(50,80));
int b_petals=int(random(6,17));
float b_x=random(0,1600);
float b_y=random(0,900);
float b_xdir=random(2,3);
float b_ydir=random(2,3);

Flower myFlower3;
int c_r=int(random(50,80));
int c_petals=int(random(6,17));
float c_x=random(0,1600);
float c_y=random(0,900);
float c_xdir=random(3,4);
float c_ydir=random(3,4);


Heart myHeart1;
float ha_d=int(random(50,100));          //random arc diameter, determining the size of the heart
float ha_x=int(random((0+ha_d),width));  //random x-value starting point 
float ha_y=int(random((0+ha_d),height)); //random y-value starting point
float ha_xdir=int(random(2,3));          //random speed
float ha_ydir=int(random(2,3));
      

void setup(){
  size(1600,900);

  myFlower1 = new Flower(a_r,a_petals,a_x,a_y, a_xdir, a_ydir);    //calling flower class
  myFlower2 = new Flower(b_r,b_petals,b_x,b_y, b_xdir, b_ydir);
  myFlower3 = new Flower(c_r,c_petals,c_x,c_y, c_xdir, c_ydir);
  
  myHeart1 = new Heart(ha_d,ha_x,ha_y, ha_xdir, ha_ydir);
}


void draw(){
  background(#43AF76);
  
  myFlower1.move();        //Displaying and moving
  myFlower1.display();

  myFlower2.move();
  myFlower2.display();
  
  myFlower3.move();
  myFlower3.display();
  
  myHeart1.move();
  myHeart1.display();
}
