import processing.serial.*;

Serial myPort;  // Create object from Serial class
int v;
int size;

void setup() {
  size(800, 800);

  // open serial port
  println(Serial.list());
  String portName = Serial.list()[1]; //??: What is this syntax?
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  
  if(myPort.available() > 0){
    v = myPort.read();
    displayValue();
    rectangle();
  }
  //} else {
  //  displayError();
  //}
}

void displayValue() {
  textSize(10);
  text("Value : "+v, width/2, height/2);
}

void displayError() {
  
  textSize(100);
  text("Device is missing", 10,height/2);
}

void rectangle() {
  clear();
  rectMode(CENTER);
  fill(155,0,0);
  size = (int)map(v, 0, 225, 0, width);
  rect(width/2, height/2, size, size);
};
