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


  /**
  * Variáveis que controlam o tamanho dos ponteiros
  * Minuto, segundo e Hora
  *
  */
 int tamanhoSegundo = 125;
 int tamanhoMinuto = 125;
 int  tamanhoHora = 125;


public void setup(){
 
 background(227,222,222 );
 
}

public void draw(){
  relogioText();

  circunferencia();
  marcadores();
  ponteiroSegundos();
  ponteiroMinuto();
  ponteiroHora();

  //clear();
  sair();
}


/**
 * Desenha a circunferencia do relogio
 */
public void circunferencia(){
  pushMatrix();
  fill(255);
  stroke(0);
  strokeWeight(7);
  ellipse(width/2, height/2, 400, 400);
  popMatrix();
}


/**
 * Desenha todos os marcadores do relogio,
 * Os marcadores de segundos possuem um tamanho pequeno
 * Os marcadores de horas possuem um tamanho maior
 */
public void marcadores(){
  translate(width/2,height/2);
  pushMatrix();
  for(int i = 0; i<60; i++){
    if(i%5 == 0)
      marcadoresGrandes(i);
    else
      marcadoresPequenos();

    rotate(radians(6));
  }
  popMatrix();
}


/**
 * Desenha os marcadores de segundos
 */
public void marcadoresPequenos(){
  stroke(0);
  strokeWeight(1);
  line(170, 0, 185, 0);



}

/**
 * Desenha os marcadores de horas
 */
public void marcadoresGrandes(int i){
  stroke(0);
  strokeWeight(3);
  line(200, 0, 170, 0);

  pushMatrix();
  rotate(radians(270));
  fill(0);
  textSize(20);
  if(i == 0 ){
    //pushMatrix();
    //translate(138, 0);
    //rotateX(radians(90));
    text(12, 138, 0);
    //popMatrix();
  }else{
    //pushMatrix();
    //translate(138, 0);
    //rotateX(radians(90));
    text(i/5, 138, 0);
    //popMatrix();
  }
  popMatrix();
}


/**
 * Desenha o ponteiro de segundo
 */
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


/**
 * Desenha o ponteiro de minutos
 */
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



/**
 * Desenha o ponteiro de hora
 */
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


/**
 * Desenha as horas em texto puro na tela
*/
public void relogioText(){
  clear();
  background(227,222,222 );
  pushMatrix();
  translate(0,0);
  //rotate()r;
  int hora = hour();
  int minutos = minute();
  int segundos = second();

  stroke(23);
  fill(0, 102, 153);
  textSize(50);
  text(hora + " : " + minutos + " : " + segundos, 260, 575 );
  popMatrix();


}


/**
 * Sai do programa quando clicado em espaço
*/
public void sair(){
  if(keyPressed){
   if(key == ' ')
     exit();
 }
}
  public void settings() {  size(800, 600);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Relogio" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
