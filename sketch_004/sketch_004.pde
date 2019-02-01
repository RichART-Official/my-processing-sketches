// Form

float i = 0;
void setup() {
  //size(800, 800);
  fullScreen();
  background(0);
}

void draw() {
  strokeWeight(4);

  if (mousePressed) {
    
    fill(0, 255, 155);
  } else {
    fill(255, 155, 0);
  }
    arc(mouseX, mouseY, 200, 80, 0, PI+QUARTER_PI, OPEN);
    triangle(mouseX, mouseY, mouseX + 100,mouseY + 100, mouseY - 100, mouseY - 100);
  // QUESTION: What are the ellipse modes?
    line(pmouseX,pmouseY, mouseX,mouseY);
  

}
