void setup() {
  size(640,360);
  w = new Walker();
  background(255);
}

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
    float stepsize = random(0,10);
    r = random(1);
    
    if (r < sq(stepsize/10)){
      float step_x = random(-stepsize,stepsize);
      float step_y = random(-stepsize,stepsize);
    
      x += step_x;
      y += step_y;
    }
  }
}

Walker w;

void draw() {
  w.step();
  w.display();
}
