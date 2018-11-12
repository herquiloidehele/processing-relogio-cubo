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

public class Relogio extends PApplet {

 int tamanhoSegundo = 125;
 int tamanhoMinuto = 125;
int  tamanhoHora = 125;


public void setup(){
 
 background(227,222,222 );
 
 
}

public void draw(){
  if(keyPressed){
   if(key == ' ')
     exit();
 }
  circunferencia();
  Todosponteiros();
  //relogioText();
}


//Desenha a circunferencia do relogio
public void circunferencia(){
  pushMatrix(); //salva o estado actual da matrix
  fill(255);
  stroke(0);
  strokeWeight(7);
  ellipse(width/2, height/2, 400, 400);
  popMatrix();
}


//Desenhar todos os Ponteiros do relógio
public void Todosponteiros(){
  translate(width/2,height/2);
  pushMatrix();
  for(int i = 0; i<60; i++){
    if(i%5 == 0)
      ponteirosGrandes();
    else
      ponteirosPequenos();
      
    rotate(radians(6));
  }
  popMatrix();

  ponteiroSegundos();
  ponteiroMinuto();
  ponteiroHora();
}

public void ponteirosPequenos(){
  stroke(0);
  strokeWeight(1);
  line(170, 0, 185, 0);
  
}

public void ponteirosGrandes(){
  stroke(0);
  strokeWeight(3);
  line(100, 0, 200, 0);
}


public void ponteiroSegundos(){
  pushMatrix();
  rotate(radians(6*second() - 90));
  stroke(255,0,0);
  strokeWeight(1);
  line(0,0, tamanhoSegundo,0);
  
  if(keyPressed){
    if(key == 's' || key == 'S')
      if(tamanhoSegundo < 200)
      tamanhoSegundo++;
  }
  
  popMatrix();
}

public void ponteiroMinuto(){
  pushMatrix();
  rotate(radians(6*(minute() + second()/60) - 90)); 
  stroke(0,255,0);
  strokeWeight(3);
  line(0,0, tamanhoMinuto,0);
  
  if(keyPressed){
    if(key == 'm' || key == 'M')
      if(tamanhoMinuto < 200)
      tamanhoMinuto++;
  }
  
  popMatrix();
}

public void ponteiroHora(){
  pushMatrix();
  rotate(radians(30*(hour() + minute()/60) - 90)); 
  stroke(0,0,266);
  strokeWeight(5);
  line(0,0,tamanhoHora,0);
  
  if(keyPressed){
    if(key == 'h' || key == 'H')
      if(tamanhoHora < 200)
      tamanhoHora++;
  }
  
  popMatrix();
  
}


public void relogioText(){
    
  pushMatrix();
  int hora = hour();
  int minutos = minute();
  int segundos = second();
  
  stroke(0);
  textSize(50);
  text(hora + " : " + minutos + " : " + segundos, 0, 0 );
  popMatrix();
}
  public void settings() {  size(800, 600, OPENGL);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Relogio" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
