Ball[] balls = new Ball[100];

void setup() {
  size(800, 600);
  surface.setResizable(true);
  background(255);
  for (int i = 0; i < balls.length; i++) {
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
  println(balls.length);
}

void draw() {
  //clear();
  for (int j = 0; j < balls.length; j++) {
    balls[j].display();
    balls[j].move();
    balls[j].bounce();
  }
}
