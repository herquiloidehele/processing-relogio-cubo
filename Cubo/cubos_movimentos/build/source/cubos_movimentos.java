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

public class cubos_movimentos extends PApplet {

float rotateVar = 10;
float cubo1 = 100;
float cubo2 = 900;
boolean colisaoCubos = false, colisaoParede1 = false, colisaoParede2 = false;


public void setup() {
  
  
  colorMode(RGB, 1);

}

public void draw() {
  println(cubo2);
  background(0.5f);
  pushMatrix();
  translate(cubo1, height/2, -50);
  rotateY(rotateVar * 0.09f);
  fill(1,0,0);
  box(100);
  popMatrix();

  pushMatrix();
  translate(cubo2, height/2, -50);
  rotateY(rotateVar * -0.09f);
  fill(0,1,0);
  box(100);
  popMatrix();

  rotateVar += 0.04f;

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
  public void settings() {  size(1000, 700, P3D);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "cubos_movimentos" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
