Flower myFlower1;
int _r1=int(random(50,80));      //random size of flowers (petals+middle) 
int a_petals=int(random(6,17));  //random number of petals (6-17)
float _1x=random(0,1600);        //random x-value starting point
float _1y=random(0,900);         //random y-value starting point
float _axdir=random(1,2);        //random speed 
float _aydir=random(1,2);

Flower myFlower2;
int _r2=int(random(50,80));
int b_petals=int(random(6,17));
float _2x=random(0,1600);
float _2y=random(0,900);
float _bxdir=random(2,3);
float _bydir=random(2,3);

Flower myFlower3;
int _r3=int(random(50,80));
int c_petals=int(random(6,17));
float _3x=random(0,1600);
float _3y=random(0,900);
float _cxdir=random(3,4);
float _cydir=random(3,4);

Heart myHeart1;
float hd1=int(random(50,100));          //random arc diameter, determining the size of the heart
float hx1=int(random((0+hd1),width));   //random x-value starting point 
float hy1=int(random((0+hd1),height));  //random y-value starting point
float hx1dir=int(random(2,3));          //random speed
float hy1dir=int(random(2,3));
      

void setup(){
  size(1600,900);
}

void draw(){
  background(#43AF76);   
   int _ar=int((( width-_1x)/( width+_1x))*255); // (opposite)changing RED colour depending on x_value
   int _ag=int((_1y/height)*255);                // changing GREEN colour depending on y_value
   int _ab=int(((_1x+_1y)/( width+height)*255)); // changing BLUE colour depending on x and y_value
   int _1pc=color(_ar,_ag,_ab);
   
   int _br=int((_2x/width)*255);
   int _bg=int(((height-_2y)/( height+_2y))*255); // (opposite)
   int _bb=int(((_2x+_2y)/( width+height)*255));
   int _2pc=color(_br,_bg,_bb);
   
   int _cr=int((_3x/width)*255);
   int _cg=int((_3y/height)*255);
   int _cb=int((((( width+height)-(_3x+_3y))/(( width+height)-(_3x+_3y)))*255)); // (opposite)
   int _3pc=color(_cr,_cg,_cb);
   
//calling flower class and displaying
  myFlower1 = new Flower(_r1,a_petals,_1x,_1y,_1pc);
  myFlower2 = new Flower(_r2,b_petals,_2x,_2y,_2pc);
  myFlower3 = new Flower(_r3,c_petals,_3x,_3y,_3pc);
  
  myHeart1 = new Heart(hd1,hx1,hy1);
  
  
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
  
  myHeart1.display();
  
  
// changing flowers position
  
  _1x=_1x+_axdir;
  _1y=_1y+_aydir;
  
  _2x=_2x+_bxdir;
  _2y=_2y+_bydir;
  
  _3x=_3x+_cxdir;
  _3y=_3y+_cydir;

   hx1=hx1+hx1dir;
   hy1=hy1+hy1dir;
   
   
// changing flowers direction when they hit the walls  
  if(_1x>width) {
    _axdir=-_axdir;
  }
  if(_1x<0) {
    _axdir=-_axdir;
  }
  if(_1y>height) {
    _aydir=-_aydir;
  }
  if(_1y<0) {
    _aydir=-_aydir;
  }
  
    
  if(_2x>width) {
    _bxdir=-_bxdir;
  }
  if(_2x<0) {
    _bxdir=-_bxdir;
  }
  if(_2y>height) {
    _bydir=-_bydir;
  }
  if(_2y<0) {
    _bydir=-_bydir;
  }
  
  
  if(_3x>width) {
    _cxdir=-_cxdir;
  }
  if(_3x<0) {
    _cxdir=-_cxdir;
  }
  if(_3y>height) {
    _cydir=-_cydir;
  }
  if(_3y<0) {
    _cydir=-_cydir;
  }
  
  
  if(hx1>width) {
    hx1dir=-hx1dir;
  }
  if(hx1<0) {
    hx1dir=-hx1dir;
  }
  if(hy1>height) {
    hy1dir=-hy1dir;
  }
  if(hy1<0) {
    hy1dir=-hy1dir;
  }
}
