class Ant {
  
  float x = random(0, width);
  float y = random(0, height);
  int w = 10;
  float vX = random(-2.5, 2.5);
  float vY = random(-2.5, 2.5);

  void display(int s) {
    x = x + vX;
    y= y + vY;
    stroke(0);
    // fill(0, random(0,155), random(0,255));
    ellipse(x,y,s,s);
    //textSize(100);
    //textAlign(CENTER);
    //text("G A M E  O V E R", width/2, height/2);
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
