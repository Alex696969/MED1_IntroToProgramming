int num = 50;
float[] x = new float[num];
float[] y = new float[num];

void setup() { 
  size(1200, 800);
  noStroke();
  fill(#FF0000, 102);
}

void draw() {
  background(0);
  // Shift the values to the right
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  // Add the new values to the beginning of the array
  x[0] = mouseX;
  y[0] = mouseY;
  
  // Draw the circles
  for (int i = 0; i < num; i++) {
    arc((x[i]-(i/2)),y[i],i,i,-PI-QUARTER_PI/2,0);
    arc((x[i]+(i/2)),y[i],i,i,-PI,QUARTER_PI/2);
    triangle(x[i]-(i*0.96),(y[i]+(i*0.2)),(x[i]+(i*0.96)),(y[i]+(i*0.2)),x[i],(y[i]+(i*1.8)));
    rect((x[i]-(i*0.965)),y[i],(i*1.92),(i*0.2));
  }
}
