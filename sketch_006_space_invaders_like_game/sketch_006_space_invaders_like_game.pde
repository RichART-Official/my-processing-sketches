import processing.sound.*;

AudioIn input;
Amplitude loudness;

int enemies = 10;
Ant[] ants = new Ant[enemies];


void setup() {
  //size(800,400);
  //surface.setResizable(true);
  fullScreen();
  noCursor();
  background(0);
  input = new AudioIn(this, 0);
  input.start();
  // Create a new Amplitude analyzer
  loudness = new Amplitude(this);

  // Patch the input to the volume analyzer
  loudness.input(input);
  for (int i=0; i <= ants.length - 1; i = i+1) {
    ants[i] = new Ant();
    ants[i].move();
  }
}

void draw() {
  // clear();
  //a.display();
  //a.falloff();
  float inputLevel = map(mouseY, 0, height, 1.0, 0.0);
  input.amp(inputLevel);
  // loudness.analyze() return a value between 0 and 1. To adjust
  // the scaling and mapping of an ellipse we scale from 0 to 0.5
  float volume = loudness.analyze();
  int size = int(map(volume, 0, 0.5, 0, 100));
  for (int i= 0; i <= ants.length - 1; i++) {
    ants[i].display(size);
    ants[i].falloff();
    // println("Ant " + i + " printed");
  }
  // timer();
}

void timer() {
  int m;
  int s = millis();
  if( millis()/1000 > 60){
    m = (s/1000)/60;
    s = s/1000 % 60;
  }else{
    m = 0;
    s = s/1000;
  }
  
  if((s/1000)%15 == 0){
    enemies = enemies + 10;
  }
  
  fill(255);
  textAlign(CENTER);
  textSize(50);
  text(m +":"+s,width/2, 75);
}
