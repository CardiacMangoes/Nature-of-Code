import java.util.Random;

Random generator;

void setup() {
  size(640,360);
  w = new Walker();
  background(255);
  generator = new Random();
}

float angle_x;
float angle_y;
float r;

class Walker {
  float x;
  float y;

  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    float step_x = (float) generator.nextGaussian();
    float step_y = (float) generator.nextGaussian();
    
      x += step_x;
      y += step_y;
  }
}

Walker w;

void draw() {
  w.step();
  w.display();
}
