import java.util.Random;

Random generator;

void setup() {
  size(640,640);
  generator = new Random();
}
void draw() {
  float num_x = (float) generator.nextGaussian();
  float sd_x = width/6;
  float mean_x = width/2;
  
  float x = sd_x * num_x + mean_x;
  
  float num_y = (float) generator.nextGaussian();
  float sd_y = height/6;
  float mean_y = height/2;
  
  float y = sd_y * num_y + mean_y;

  float c = sqrt(sq(x - mean_x)+sq(y - mean_y));
  
  colorMode(HSB,320);
  noStroke();
  fill(c,255,255,40);
  ellipse(x,y,16,16);
}
