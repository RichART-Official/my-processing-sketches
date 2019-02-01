import processing.sound.*;

int amount = 1000;
Ant[] ants = new Ant[amount];
void setup() {
  // Set window properties
  //size(800,640);
  fullScreen(); 
  noCursor();
  surface.setResizable(true);
  background(0);
  
  // Load Content
  //loadFrames();
  for (int i=0; i <= ants.length - 1; i = i+1) {
    ants[i] = new Ant();
    ants[i].move();
  }
}

void draw() {
  clear();
  //a.display();
  //a.falloff();
  
  for (int i= 0; i <= ants.length - 1; i++) {
    ants[i].display();
    ants[i].falloff();
    // println("Ant " + i + " printed");
  }
}
