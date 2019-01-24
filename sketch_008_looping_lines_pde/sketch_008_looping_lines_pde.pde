int l = 255;

void setup(){
  size(800,600);
  surface.setResizable(true);
  background(255);
}

void draw(){
  stroke(0);
  for(int i = 0; i < l; i++){
    
    float offset = (width/2) + i*(width/l)/2;
    stroke(i*(255/l));
    strokeWeight(width/l - offset);
    line(offset, 0, offset, height);
  } 
  
  for (int j = 0; j < l; j++){
    float offset = j * height/l;
    strokeWeight(height/l - offset);
    stroke(j*(255/l));
    line(0, offset, width/2, offset);
  }
}
