
import processing.serial.*;
Serial myPort;
int amount;
Ball[] balls = new Ball[1000];


void setup() {
  size(800, 600);
  surface.setResizable(true);
  background(255);
  openDial();
  for (int i = 0; i < amount; i++) {
    balls[i] = new Ball(
    random(0, width), 
    random(0, height), 
    random(0, 100), 
    random(-1, 1), 
    random(-1, 1), 
    color(random(0, 255), 
    random(0, 255), 
    random(0, 255), 
    random(0, 255))
    );
  }
  println("Object Counter: " + balls.length);
}

void draw() {
  //clear();
  getValue();
  displayValue();
  
  for (int j = 0; j < balls.length; j++) {
    balls[j].display();
    balls[j].move();
    balls[j].bounce();
  }
}

void openDial(){
  // open serial port
  println(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
}

void displayValue() {
  textSize(10);
  text("Value : "+amount, width/2, height/2);
}

void getValue(){
  if(myPort.available() > 0){

    // i = (int)map(input, 0, 255, 0, 1000);\
     
    amount = myPort.read();
    println(amount);
  }
}
