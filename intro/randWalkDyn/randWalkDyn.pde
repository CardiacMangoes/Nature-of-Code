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
    float step_x = random(2)-1;
    float step_y = random(2)-1;
    
    angle_x = x - mouseX;
    angle_x /= abs(angle_x)*-1;
    
    angle_y = y - mouseY;
    angle_y /= abs(angle_y)*-1;
    
    r = random(1);
    
    if (r > 0.5) {
      x += step_x;
      y += step_y;
    } else {
      x += angle_x;
      y += angle_y;
    }
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
