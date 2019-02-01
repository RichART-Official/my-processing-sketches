class Ball {

  float x;
  float y;
  float w;
  float vX;
  float vY;

  color c;

  public Ball(
  float bX, 
  float bY, 
  float bW, 
  float bVX, 
  float bVY, 
  color bC
  ) {
    x = bX;
    y = bY;
    w = bW;
    vX = bVX;
    vY = bVY;
    c = bC;
  }

  void display() {
    fill(c);
    strokeWeight(0);
    ellipse(x, y, w, w);
  }
  
  void move(){
    x = x + vX;
    y = y + vY;
  }
  
  void bounce() {
    if (x < 0 || x > width) {
      vX = vX * -1;
    }
    if (y < 0 || y > height) {
      vY = vY * -1;
    }
  }
}
