import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class cubo_eixos extends PApplet {


boolean face1 = true, face2 = true, face3 = true, face4 = true, face5 = true, face6 = true;
float rotateVar = 0;


public void setup() {
  
  
  colorMode(RGB, 1);

}

public void draw() {
  background(0.5f);

  pushMatrix();
  textSize(25);
  fill(1, 0, 0);
  text("Eixo X", 20, 50);
  fill(0, 1, 0);
  text("Eixo Y", 20, 90);
  fill(0, 0, 1);
  text("Eixo Z", 20, 130);
  popMatrix();


  pushMatrix();

  translate(width/2, height/2, -50);

    rotateY(radians(mouseX));
    rotateZ(radians(mouseX));
    rotateX(radians(mouseX));

  desenharEixos();
  noStroke();
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

  rotateVar +=0.06f;

  popMatrix();
}

public void eventos() {

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


public void desenharEixos()
{
    pushMatrix();
    // X axis points right
    stroke(1, 0, 0);
    line(0, 1500, 0, 0, 0, 0);

    // Y axis points up
    stroke(0, 1, 0);
    line(0, 0, 0, 1500, 0, 0);

    // Z axis points backwards
    stroke(0, 0, 1);
    line(0, 0, 0, 0, 0, 1500);
    popMatrix();
}
  public void settings() {  size(1000, 700, P3D);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "cubo_eixos" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
