class Walker {
  float x,y;
  float tx,ty;

  Walker() {
    tx = 0;
    ty = 10000;
  }
  
  void display() {
    background(100);
    noStroke();
    ellipse(x,y,16,16);
  }
  
  void step() {
    tx += 0.001;
    ty += 0.001;
    
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
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
