//King
PImage img;
int x = 0;
int speed = 1;

void setup() {
  
  size (1080,720);
 
  stroke(0);
  noFill();
  img = loadImage("red king.png");
  
  
}

void draw(){
  color purple = #3203aa;
  background(purple);
  
    x = x + speed;
if ((x > width) || (x < 0)) {
speed = speed * -1;
}
stroke(0);

textSize(64);
  text("RED KING", x,680);
  rect(x,610,265,80);


  
  int i = 0;
  while (i < 10) {
    ellipse(width/2, height/2, i*60, i*60);
    i++;
    
  }
  
  color red = #ff060a;
  image(img, 240, 0);
  
 
  
  
  
  


  
}
