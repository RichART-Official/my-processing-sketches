class Ant {
  PImage img;
  float x = random(0, width);
  float y = random(0, height);
  int w = 10;
  float vX = random(-10, 10);
  float vY = random(-1.5, 1.5);
  
  
  Ant(){
    img = loadImage("people-walking.png");
  }

  void display() {
    x = x + vX;
    y= y + vY;
    stroke(0);
    // fill(0, random(0,155), random(0,255));
    // triangle(x +20 ,y -20,x,y,x + 40,y + 40);
    //textSize(100);
    //textAlign(CENTER);
    //text("G A M E  O V E R", width/2, height/2);
    scale(-1,1);
    image(img, x,y);
    //if(vX < 0){
    //  pushMatrix();
    //  translate(img.width,0);
    //  scale(-1,1);
    //  image(img, x,y);
    //  popMatrix();
    //} else {
    //  image(img, x,y);
    //}
    
  }
 
  void move() {
    x = x + vX;
    y = y + vY;
    // println("vX:" + vX +"; vY:" + vY);
  }

  void falloff() {
    if (y < 0) {
      y = height;
    }
    if (y > height) {
      y = 0;
    }
    if (x < 0) {
      x = width;
    }
    if (x > width) {
      x = 0;
    }
  }
}

// ?? WHAT IS THE DIFFERENCE BETWEEN FLOAT, INT, ETC?
// ?? HOW TO PASS PARAMETERS?
