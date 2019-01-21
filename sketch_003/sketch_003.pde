void setup(){
  size(500,500);
  background(0);
}

void draw(){
  clear();
  player();
  enemy();
  line();
}

void player(){
  rectMode(CENTER);
  rect(width - 50, mouseY,10,100);
}

void enemy(){
  rectMode(CENTER);
  rect(0 + 50, pmouseY,10,100);
}

void line(){
  stroke(255);
  line(width/2,0,width/2,height);
}
