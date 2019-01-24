int enemies = 100;
Ant[] ants = new Ant[enemies];


void setup() {
  //size(800,400);
  //surface.setResizable(true);
  fullScreen();
  background(0);
  for (int i=0; i <= ants.length - 1; i = i+1) {
    ants[i] = new Ant();
    ants[i].move();
  }
}

void draw() {
  // clear();
  //a.display();
  //a.falloff();
  
  for (int i= 0; i <= ants.length - 1; i++) {
    ants[i].display();
    ants[i].falloff();
    // println("Ant " + i + " printed");
  }
  // timer();
}

void timer() {
  int m;
  int s = millis();
  if( millis()/1000 > 60){
    m = (s/1000)/60;
    s = s/1000 % 60;
  }else{
    m = 0;
    s = s/1000;
  }
  
  if((s/1000)%15 == 0){
    enemies = enemies + 10;
  }
  
  fill(255);
  textAlign(CENTER);
  textSize(50);
  text(m +":"+s,width/2, 75);
}
