void setup()
{
  //the small sus by arturo garcia

size (1080,720);
}

void draw() 
{
  if (frameCount % 80 == 0){ 
   background(random(255), random(255), random(255));}
   if (mouseX>=500){
color r = color(255,0,0);
fill(r);
rect(500, 290, 200, 200);
circle(550, 530, 100);
circle(450, 530, 100);
circle(500, 400, 250);
color c = color(20, 75, 200);
fill(c);
ellipse(490, 400, 110,70);
color g = color(0, 75, 0);
fill(g);
triangle(360, 300, 500, 200, 630, 300);

  if (keyPressed == true) {
    fill(2250);
  } else {
    color b = #06fff1;
fill(b);
  }
  ellipse(490, 400, 110,70);
  triangle(360, 300, 500, 200, 630, 300);
  
  
   } else{
     //colors
     color black = #080808;
     color yellow = #ffcc00;
     color purple = #3203aa;
     color green = #0eff06;
     //--------
     fill(255);
     fill(green);
     rect(130, 290, 200, 200);
     fill(black);
     circle(170, 530, 100);
     fill(black);
     circle(70, 530, 100);
     fill(black);
     circle(130, 400, 250);
     
     fill(purple);
     ellipse(90, 400, 110,70);
     fill(yellow);
     rect(100, 210, 120, 100);
     fill(yellow);
     ellipse(110, 300, 210,70);
     
     
   }
   
   color brown = #863000;
   color green = #0eff06;
   fill(brown);
   rect(870, 200, 110, 400);
   fill(green);
   circle(850, 230, 200);
   circle(1000, 230, 200);
   circle(930, 160, 220);
   
   





}
