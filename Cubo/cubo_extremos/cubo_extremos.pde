
float rotateVar = 10;


void setup() {
  size(1000, 700, P3D);
  smooth();
  colorMode(RGB, 1);

}

void draw() {
  background(0.5);
  pushMatrix();

  translate(width/2, height/2, -50);
  rotateX(rotateVar * 0.09);
  rotateY(rotateVar * 0.09);
  fill(0,1,0);
  box(190);
  popMatrix();

  rotateVar += 0.04;

}
