import processing.sound.*;
AudioIn input;
Amplitude loudness;
PImage[] sequence = new PImage[26];

void setup() {
  // Set up Window
  fullScreen();
  noCursor();  ;
  //size(1280, 720);
  
  surface.setResizable(true);
  background(20);

  // Load Image Sequence
  loadImages();

  // Audio Input
  input = new AudioIn(this, 0);
  input.start();

  // Amplitude Analizer
  loudness = new Amplitude(this);
  loudness.input(input);
}

void draw() {
  scrubImages();
}

void loadImages() {
  for (int i=0; i < sequence.length; i++) {
    String path="film/MTM_002_02_X1_"+ nf(i+1, 4) + ".jpeg";
    sequence[i] = loadImage(path);
  }
}

void scrubImages() {
  float volume = loudness.analyze();
  int idx = (int)map(volume, 0, .5, 0, sequence.length -1);
  //int idx = (int)map(mouseX, 0, width, 0, sequence.length -1);
  imageMode(CENTER);
  image(sequence[idx], width/2, height/2, width, height);
}

void presentationMode(){
  
}
