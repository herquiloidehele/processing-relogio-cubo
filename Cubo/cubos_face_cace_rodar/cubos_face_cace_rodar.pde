float rotateVar = 10;


void setup() {
  size(1000, 700, P3D);
  smooth();
  colorMode(RGB, 1);

}

void draw() {
  background(0.5);
  pushMatrix();
  translate(width/2-140, height/2, -50);
  rotateY(rotateVar * 0.09);
  fill(1,0,0);
  box(150);
  popMatrix();

  pushMatrix();
  translate(width/2+140, height/2, -50);
  rotateY(rotateVar * -0.09);
  fill(0,1,0);
  box(150);
  popMatrix();

  rotateVar += 0.04;

}
