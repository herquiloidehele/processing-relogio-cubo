
boolean face1 = true, face2 = true, face3 = true, face4 = true, face5 = true, face6 = true;
float rotateVar = 0; 


void setup() { 
  size(1000, 700, P3D); 
  smooth();
  colorMode(RGB, 1); 
  
}

void draw() { 
  background(0.5);

  pushMatrix();
  textSize(25);
  fill(0, 1, 1); 
  text("Remover face 1 (1)", 20, 50);
  fill(1, 1, 1);
  text("Remover face 2 (2)", 20, 90);
  fill(1, 1, 0);
  text("Remover face 3 (3)", 20, 130);
  fill(0, 1, 0);
  text("Remover face 4 (4)", 20, 170);
  fill(1, 0, 1); 
  text("Remover face 5 (5)", 20, 210);
  fill(1, 0, 0);
  text("Remover face 6 (6)", 20, 250);
   fill(0, 0, 0); 
  text("Prencher cubo  (T)", 20, 290);
  popMatrix();

  eventos();

  pushMatrix(); 
    noStroke(); 

  translate(width/2, height/2, -50); 

 

  rotateX(rotateVar * 0.3);
  rotateY(rotateVar * 0.9);

  scale(90);
  beginShape(QUADS);

  if (face1) {
    fill(0, 1, 1); 
    vertex(-1, 1, 1);
    fill(0, 1, 1); 
    vertex( 1, 1, 1);
    fill(0, 1, 1); 
    vertex( 1, -1, 1);
    fill(0, 1, 1); 
    vertex(-1, -1, 1);
  }

  if (face2) {
    fill(1, 1, 1); 
    vertex( 1, 1, 1);
    fill(1, 1, 1); 
    vertex( 1, 1, -1);
    fill(1, 1, 1); 
    vertex( 1, -1, -1);
    fill(1, 1, 1); 
    vertex( 1, -1, 1);
  }
  
  if (face3) {
    fill(1, 1, 0); 
    vertex( 1, 1, -1);
    fill(1, 1, 0); 
    vertex(-1, 1, -1);
    fill(1, 1, 0); 
    vertex(-1, -1, -1);
    fill(1, 1, 0); 
    vertex( 1, -1, -1);
  }

  if (face4) {
    fill(0, 1, 0); 
    vertex(-1, 1, -1);
    fill(0, 1, 0); 
    vertex(-1, 1, 1);
    fill(0, 1, 0); 
    vertex(-1, -1, 1);
    fill(0, 1, 0); 
    vertex(-1, -1, -1);
  }
  
  if (face5) {
    fill(1, 0, 1); 
    vertex(-1, 1, -1);
    fill(1, 0, 1); 
    vertex( 1, 1, -1);
    fill(1, 0, 1); 
    vertex( 1, 1, 1);
    fill(1, 0, 1); 
    vertex(-1, 1, 1);
  }
  
  if (face6) {
    fill(1, 0, 0); 
    vertex(-1, -1, -1);
    fill(1, 0, 0); 
    vertex( 1, -1, -1);
    fill(1, 0, 0); 
    vertex( 1, -1, 1);
    fill(1, 0, 0); 
    vertex(-1, -1, 1);
  }



  endShape();

  rotateVar +=0.06;

  popMatrix();
} 

void eventos() {

  if (keyPressed) {
    if (key == '1')
      face1 = false;
    if (key == '2')
      face2 = false;
    if (key == '3')
      face3 = false;
    if (key == '4')
      face4 = false;
    if (key == '5')
      face5 = false;
    if (key == '6')
      face6 = false;
    if(key == 'T' || key == 't'){
      face1 = true;
      face2 = true;
      face3 = true;
      face4 = true;
      face5 = true;
      face6 = true;
    }
  }
}
