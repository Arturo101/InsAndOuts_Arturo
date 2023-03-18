// kirby
PImage img;
PImage skate;






void setup() {
  size (1080,720);
  
  stroke(0);
  noFill();
  img = loadImage("kirbyblue.png");
  img.resize(1080,720);
  skate = loadImage("churro kirby.png");
  skate.resize(1080,720);
  
}

void draw(){
  
 kirby();
 kirbyskate();
 key();
 
 
}
void kirbyskate(){
  image(skate, 0, 0);
}
void kirby() {
  image(img, 0, 0);
  
 
}

void key(){
  
 if (keyPressed) {
    if (key == 'a') {
      kirby();
    }
  } else if (key == 'd'){
    kirbyskate();
  }
  
}

  
