void setup()
{
  //the small sus by arturo garcia
  //you can change the color of the character by pressing a key
  //you can change the shape of the black character by pressing mouse
  // you can see the characters by moving mouse left or right 

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

  if (keyPressed == true) { //changes color of the eye and hat
    fill(2250);
  } else {
    color b = #06fff1;
fill(b);
  }
  ellipse(490, 400, 110,70);
  triangle(360, 300, 500, 200, 630, 300);


   } else{
     //colors
     //second character
     color black = #080808;
     color yellow = #ffcc00;
     color purple = #3203aa;
     color green = #0eff06;
     color pink = #e8aca6;
     //--------
     fill(255);
     fill(green);
     rect(130, 290, 200, 200);
     fill(black);
     circle(170, 530, 100);
     fill(black);
     circle(70, 530, 100);
     if (!mousePressed) {
     fill(black);
     circle(130, 400, 250);//body
     } else {
       fill(pink);
       rect(5, 290, 240, 210);}
     

     fill(purple);
     ellipse(90, 400, 110,70);
     fill(yellow);
     rect(100, 210, 120, 100);
     fill(yellow);
     ellipse(110, 300, 210,70);


   }

   color brown = #863000;
   color green = #0eff06;
   color blue = #133bfc;
   //TREE
   fill(brown);
   rect(870, 183, 110, 400);
   fill(green);
   circle(850, 230, 200);
   circle(1000, 230, 200);
   circle(930, 160, 220);
   
   fill(brown);
   for (int i = 0; i < 70; i++) {
circle(i*25, 586, 25 );


}
//tempting making triangles water waves
fill(blue);
for(int x = 15; x < 1100; x +=30){ 
    triangle(x,670, x-30,700+20,x +15,700 +40);
    
  
}




}
