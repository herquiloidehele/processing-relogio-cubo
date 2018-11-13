float xmag, ymag = 0;
float newXmag, newYmag, rotateVar = 0; 

Button on_button;  // the button
int clk = 1;       // number of times the button is clicked
  
void setup()  { 
  size(800, 600, P3D); 
  noStroke(); 
  colorMode(RGB, 1); 
}
 
void draw()  { 
  background(0.5);
  
   // create the button object
  on_button = new Button("Clica me", width+100, height+100, 100, 50);
  
  pushMatrix(); 
  translate(width/2, height/2, -100); 
  
  rotateX(rotateVar * 0.3);
  rotateY(rotateVar * 0.9);
  
  scale(90);
  beginShape(QUADS);

  fill(0, 1, 1); vertex(-1,  1,  1);
  fill(0, 1, 1); vertex( 1,  1,  1);
  fill(0, 1, 1); vertex( 1, -1,  1);
  fill(0, 1, 1); vertex(-1, -1,  1);

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
    fill(255);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
  }
  
  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}
