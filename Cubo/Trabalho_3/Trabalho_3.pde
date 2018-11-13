float xmag, ymag = 0;
boolean face1 = true;
float newXmag, newYmag, rotateVar = 0; 

Button on_button1,on_button2,on_button3, on_button4, on_button5, on_button6,on_button7;
int clk = 1;
  
void setup()  { 
  size(1000, 700, P3D); 
  noStroke(); 
  smooth();
  colorMode(RGB, 1); 
  
   // create the button object
  on_button1 = new Button("Remover face 1 (1)", 20, 20, 100, 50);
  on_button2 = new Button("Remover face 2 (2)", 150, 20, 100, 50);
  on_button3 = new Button("Remover face 3 (3)", 280, 20, 100, 50);
  on_button4 = new Button("Remover face 4 (4)", 430, 20, 100, 50);
  on_button5 = new Button("Remover face 5 (5)", 580, 20, 100, 50);
  on_button6 = new Button("Remover face 6 (6)", 730, 20, 100, 50);
  on_button7 = new Button("Prencher cubo (T)", 880, 20, 100, 50);
  
}
 
void draw()  { 
  background(0.5);
 
 eventos();
 pushMatrix();
   // draw the button in the window
  on_button1.Draw();
  on_button2.Draw();
  on_button3.Draw();
  on_button4.Draw();
  on_button5.Draw();
  on_button6.Draw();
  on_button7.Draw();
 
 popMatrix();
  
 
  pushMatrix(); 
  translate(width/2, height/2, -50); 
  
  rotateX(rotateVar * 0.3);
  rotateY(rotateVar * 0.9);
  
  scale(90);
  beginShape(QUADS);

  if(face1){
    fill(0, 1, 1); vertex(-1,  1,  1);
  fill(0, 1, 1); vertex( 1,  1,  1);
  fill(0, 1, 1); vertex( 1, -1,  1);
  fill(0, 1, 1); vertex(-1, -1,  1);
  }
  

  fill(1, 1, 1); vertex( 1,  1,  1);
  fill(1, 1, 1); vertex( 1,  1, -1);
  fill(1, 1, 1); vertex( 1, -1, -1);
  fill(1, 1, 1); vertex( 1, -1,  1);

  fill(1, 1, 0); vertex( 1,  1, -1);
  fill(1, 1, 0); vertex(-1,  1, -1);
  fill(1, 1, 0); vertex(-1, -1, -1);
  fill(1, 1, 0); vertex( 1, -1, -1);

  fill(0, 1, 0); vertex(-1,  1, -1);
  fill(0, 1, 0); vertex(-1,  1,  1);
  fill(0, 1, 0); vertex(-1, -1,  1);
  fill(0, 1, 0); vertex(-1, -1, -1);

  fill(1, 0, 1); vertex(-1,  1, -1);
  fill(1, 0, 1); vertex( 1,  1, -1);
  fill(1, 0, 1); vertex( 1,  1,  1);
  fill(1, 0, 1); vertex(-1,  1,  1);

  fill(1, 0, 0); vertex(-1, -1, -1);
  fill(1, 0, 0); vertex( 1, -1, -1);
  fill(1, 0, 0); vertex( 1, -1,  1);
  fill(1, 0, 0); vertex(-1, -1,  1);

  endShape();
  
  rotateVar +=0.06;
 
  popMatrix(); 
  
} 

void eventos(){
  
  if(keyPressed){
    if(key == '1'){
      face1 = false;
    }
  }
  
}



// the Button class
class Button {
  String label; // button label
  float x;      // top left corner x position
  float y;      // top left corner y position
  float w;      // width of button
  float h;      // height of button
  
  // constructor
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void Draw() {
    stroke(255);
    fill(255);
    rect(x, y, w, h, 10);
    textAlign(CENTER);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
  }
}
