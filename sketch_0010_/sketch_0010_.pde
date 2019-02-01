import netP5.*;
import oscP5.*;

OscP5 oscP5;


NetAddress myRemoteLocation;
int c;
int md;
int[] color = {};
float s = 1.0;


void setup() {
 size(800,800);
 
 oscP5 = new OscP5(this,8338);
 myRemoteLocation = new NetAddress("145.137.125.201",8338);
}

void draw() {
  
  background(255);
  
  fill(0,c,c);
  ellipse(width/2, height/2, md,md);
  textSize(100);
  text(md,0,0);
  /* in the following different ways of creating osc messages are shown by example */
  
}

void oscEvent(OscMessage theOscMessage) {
  
  //print("### received an osc message.");
  //print(" addrpattern: "+theOscMessage.addrPattern());
  //println(" typetag: "+theOscMessage.typetag());
  
  
  if (theOscMessage.addrPattern().equals("/pose/scale")) {
    s = theOscMessage.get(0).floatValue();
  }
  
  if (theOscMessage.addrPattern().equals("/gesture/mouth/width")) {
    float mw = theOscMessage.get(0).floatValue();
    c = int(map(mw, 10, 15, 0, 255));
    // println(c);
  }
  

  if (theOscMessage.addrPattern().equals("/test")) {
    md = theOscMessage.get(0).intValue();
    println(md);
  }
}

void sendMessage() {
  OscMessage myMessage = new OscMessage("/test");
  myMessage.add(md); /* add an int to the osc message */
  // println(message);
  /* send the message */
  oscP5.send(myMessage, myRemoteLocation); 
  //sendMessage();
}
