// Test for animation and 
// Ball
int x = width/3;
int y = width/2;
int speedX = 5;
int speedY = 2;
int d = 10;
int grow = 5;

// Player
int pX = width - 50;
int pY = mouseY;
int pW = 0;
int pH = 0;

void setup() {
  size(600, 400);
  PImage img;
  img = loadImage("char.jpg");
  background(img);
}

void draw() {
  clear();
  background(0, 255, 155);
  stroke(0);
  x = x + speedX;
  y = y + speedY;
  d = d + grow;
  pW = 30;
  pH = 150;
  pX = width - pW;
  pY = mouseY;

  //if (x + d/2 > width && x < 0) {
  //  speedX = speedX *-1;
  //}

  if (x + d/2 > width - pW || x <= 0) {
    if (y - d/2 > pY && y + d/2 < pY + pH) {
      speedX = speedX *-1;
    } else {
      textSize(32);
      text("you failed", width/2, height/2);
    }
  }
  if (y + d/2 > height || y < 0 ) {
    speedY = speedY *-1;
  }
  if (d > 50 || d < 1) {
    grow = grow *-1;
  }

  //fill(random(255), random(255), 255);
  ellipse(x, y, d, d);
  rect(pX, pY, pW, pH);
}
