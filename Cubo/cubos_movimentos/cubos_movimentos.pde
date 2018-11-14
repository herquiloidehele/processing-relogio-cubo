float rotateVar = 10;
float cubo1 = 100;
float cubo2 = 900;
boolean colisaoCubos = false, colisaoParede1 = false, colisaoParede2 = false;


void setup() {
  size(1000, 700, P3D);
  smooth();
  colorMode(RGB, 1);

}

void draw() {
  background(0.5);
  pushMatrix();
  translate(cubo1, height/2, -50);
  rotateY(rotateVar * 0.09);
  fill(1,0,0);
  box(100);
  popMatrix();

  pushMatrix();
  translate(cubo2, height/2, -50);
  rotateY(rotateVar * -0.09);
  fill(0,1,0);
  box(100);
  popMatrix();

  rotateVar += 0.04;

  if(cubo1 == cubo2-100)
    colisaoCubos = true;

  if(colisaoCubos == false){
    cubo1++;
    cubo2--;
  }

  if(colisaoCubos){
    cubo1--;
    cubo2++;
  }

  if(cubo1 == 100){
    colisaoCubos = false;
  }

  if(cubo1 == 900){
    colisaoCubos = false;
  }

}
