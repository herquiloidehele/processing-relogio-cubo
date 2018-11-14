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

public class cubo_extremos extends PApplet {


float rotateVar = 10;


public void setup() {
  
  
  colorMode(RGB, 1);

}

public void draw() {
  background(0.5f);
  pushMatrix();

  translate(width/2, height/2, -50);
  rotateX(rotateVar * 0.09f);
  rotateY(rotateVar * 0.09f);
  fill(0,1,0);
  box(190);
  popMatrix();

  rotateVar += 0.04f;

}
  public void settings() {  size(1000, 700, P3D);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "cubo_extremos" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
