class Walker {
  int x;
  int y;

  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    float step_x = random(3)-1;
    float step_y = random(3)-1;
    
    x += step_x;
    y += step_y;
  }
}

Walker w;

void setup() {
  size(640,360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
