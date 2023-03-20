//midterm
int scene =1;
float expand =0;
PImage kirby;
PImage kb;
PImage land;
PImage ice;
PImage fly;
PImage [] kirbyfire = new PImage[20];
void setup() {
  
  size (1080,720);
  stroke(0);
  noFill();
  kirby = loadImage("kirbyclown.png");
  kb = loadImage("kirbybackground.png");
  land = loadImage("land.png");
  ice = loadImage("icebg.png");
  fly= loadImage("float.png");
  //this is for the gif
  kirbyfire[0] = loadImage("f1.gif");
  kirbyfire[1] = loadImage("f2.gif");
  kirbyfire[2] = loadImage("f3.gif");
  kirbyfire[3] = loadImage("f4.gif");
  kirbyfire[4] = loadImage("f5.gif");
  kirbyfire[5] = loadImage("f6.gif");
  kirbyfire[6] = loadImage("f7.gif");
  kirbyfire[7] = loadImage("f8.gif");
  kirbyfire[8] = loadImage("f9.gif");
  kirbyfire[9] = loadImage("f10.gif");
  kirbyfire[10] = loadImage("f11.gif");
  kirbyfire[11] = loadImage("f12.gif");
  kirbyfire[12] = loadImage("f13.gif");
  kirbyfire[13] = loadImage("f14.gif");
  kirbyfire[14] = loadImage("f15.gif");
  kirbyfire[15] = loadImage("f16.gif");
  kirbyfire[16] = loadImage("f17.gif");
  kirbyfire[17] = loadImage("f18.gif");
  kirbyfire[18] = loadImage("f74.gif");
  kirbyfire[19] = loadImage("f75.gif");
  
 
  
  
  
}



void draw(){
  
  //background(100);
  
  if (scene!=6) {  
    expand=0;  
  }
  if (scene==1) {
    
    //kirby();
    image(kb,-100,0);
  kb.resize(1280,720);
  kirby();
    button(-400, " kirby", 0,10);
    button(-400, "  float", 255, -100);
    button(-400, "   fire", 0, -210);
    button(-400, "    ice", 255, -320);
    button(-400, "joker", 0, -430);
    button(-400,"custom", 0, -430);
  } else if (scene==2) {
   kirbyfloat();
   button(-400, " kirby", 0,10);
    button(-400, "  float", 255, -100);
    button(-400, "   fire", 0, -210);
    button(-400, "    ice", 255, -320);
    button(-400, "joker", 0, -430);
    button(-400,"custom", 0, -430);
   
  } else if (scene==3) {
    kirbyfire();
    button(-400, " kirby", 0,10);
    button(-400, "  float", 255, -100);
    button(-400, "   fire", 0, -210);
    button(-400, "    ice", 255, -320);
    button(-400, "joker", 0, -430);
    button(-400,"custom", 0, -430);
    println(scene);
  } else if (scene==4) {
    kirbyice();
    button(-400, " kirby", 0,10);
    button(-400, "  float", 255, -100);
    button(-400, "   fire", 0, -210);
    button(-400, "    ice", 255, -320);
    button(-400, "joker", 0, -430);
    button(-400,"custom", 0, -430);
  }
  else if (scene==5) {
    kirbyjoker();
    button(-400, " kirby", 0,10);
    button(-400, "  float", 255, -100);
    button(-400, "   fire", 0, -210);
    button(-400, "    ice", 255, -320);
    button(-400, "joker", 0, -430);
    button(-400,"custom", 0, -430);
  }
  else if (scene==6) {
   kirbycustom();
   button(-400, " kirby", 0,10);
    button(-400, "  float", 255, -100);
    button(-400, "   fire", 0, -210);
    button(-400, "    ice", 255, -320);
    button(-400, "joker", 0, -430);
    button(-400,"custom", 0, -430);
  }
   if (mousePressed&&mouseX>80&&mouseX<180&& mouseY>560&&mouseY<660) {
    scene=1;
   }
   if (mousePressed&&mouseX>80&&mouseX<180&& mouseY>450&&mouseY<545) {
    scene=2;
   }
   if (mousePressed&&mouseX>80&&mouseX<180&& mouseY>340&&mouseY<440) {
    scene=3;
   }
   if (mousePressed&&mouseX>80&&mouseX<180&& mouseY>230&&mouseY<330) {
    scene=4;
   }
  
  
  println("x = " + mouseX);
  println("y =" + mouseY);
  println(scene);
  
  
}






void kirby(){
}


void kirbyfloat(){
  image(land,-100,0);
  land.resize(1280,720);
  image(fly,mouseX,mouseY);
  fly.resize(200,200);
  
}



void kirbyfire(){
  image (kirbyfire[frameCount%20],0,0);
  kirbyfire[frameCount%20].resize(1280,720);
  frameRate( 10 );
  
}

void kirbyice(){
  image(ice,-100,0);
  ice.resize(1280,720);
  
  
  
  
}
void kirbyjoker(){
  
  
}
void kirbycustom(){
  
  
}
void button(int x, String scene, int shader, int y) {
  color pink =#f47fff;
  fill(pink);
  ellipse(width/2-10+x, height/2+240 +y, 100, 100);
  textSize(30);
  fill(shader);
  text(scene, width/2 -55 +x, height/2+250 + y);
}
