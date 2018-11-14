
  /**
  * Variáveis que controlam o tamanho dos ponteiros
  * Minuto, segundo e Hora
  *
  */
 int tamanhoSegundo = 125;
 int tamanhoMinuto = 125;
 int tamanhoHora = 125;
 int rotarNumeros = 0;


void setup(){
 size(800, 600);
 background(227,222,222 );
 smooth();
}

void draw(){
  relogioText();

  circunferencia();
  marcadores();
  ponteiroSegundos();
  ponteiroMinuto();
  ponteiroHora();

  pushMatrix();
  strokeWeight(15);
  fill(255,0,0);
  point(0,0);
  popMatrix();


  sair();
}


/**
 * Desenha a circunferencia do relogio
 */
void circunferencia(){
  pushMatrix();
  fill(255);
  stroke(247,7, 7);
  strokeWeight(7);
  ellipse(width/2, height/2, 400, 400);
  popMatrix();
}


/**
 * Desenha todos os marcadores do relogio,
 * Os marcadores de segundos possuem um tamanho pequeno
 * Os marcadores de horas possuem um tamanho maior
 */
void marcadores(){
  translate(width/2,height/2);
  pushMatrix();
  for(int i = 0; i<60; i++){
    if(i%5 == 0)
      marcadoresGrandes(i);
    else
      marcadoresPequenos(i);

    rotate(radians(6));
    //if(3 == i/5 || 6 == i/6)
    //  println(i);
  }
  popMatrix();
}


/**
 * Desenha os marcadores de segundos
 */
void marcadoresPequenos(int i){
  stroke(0);
  strokeWeight(1);
  line(170, 0, 185, 0);
  
  
}

/**
 * Desenha os marcadores de horas
 */
void marcadoresGrandes(int i){
  stroke(0);
  strokeWeight(3);
  line(200, 0, 170, 0);

  pushMatrix();
  rotate(radians(270));
  fill(0);
  textSize(15);
  textAlign(CENTER);
  if(i == 0 ){
    text(12, 138, 0);
  }else{
    text(i/5, 150, 0);
  }
  popMatrix();
}


/**
 * Desenha o ponteiro de segundo
 */
void ponteiroSegundos(){
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
void ponteiroMinuto(){
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
void ponteiroHora(){
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
void relogioText(){
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
void sair(){
  if(keyPressed){
   if(key == ' ')
     exit();
 }
}
