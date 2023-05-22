// press one for switches on plant
//press 2 for switches on base
// three is for the logo lights to turn off and on
import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class
int scene =1;
float expand =0;
PImage momo;
PImage base;
color purple  = #cb9cf5;
color green  = #6df36d;
color red  = #ff060a;
color black  = #070707;
color white  = #ffffff;





void setup() {
  
  size (1080,720);
  stroke(0);
  noFill();
  momo = loadImage("momo.png");
  base = loadImage("base.png");
  
  
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}


void draw(){
  if (scene!=3) {  
   
    expand=0;
    
  }
  if (scene==1) {
    background(green);
    image(momo,150,0);
  }
  else if (scene==2) {
    background(purple);
    image(base,70,0);
    
    if (mousePressed&&mouseX>285&&mouseX<325&& mouseY>90&&mouseY<125){
     key = 'q';
   }
   if (mousePressed&&mouseX>285&&mouseX<325&& mouseY>124&&mouseY<160){
     key = 'w';
   }
   if (mousePressed&&mouseX>285&&mouseX<325&& mouseY>275&&mouseY<310){
     key = 'r';
   }
   if (mousePressed&&mouseX>285&&mouseX<325&& mouseY>311&&mouseY<350){
     key = 'e';
   }
   if (mousePressed&&mouseX>285&&mouseX<325&& mouseY>510&&mouseY<550){
     key = 'y';
   }
   if (mousePressed&&mouseX>285&&mouseX<325&& mouseY>551&&mouseY<590){
     key = 't';
   }
   if (mousePressed&&mouseX>755&&mouseX<795&& mouseY>75&&mouseY<115){
     key = 'i';
   }
   if (mousePressed&&mouseX>755&&mouseX<795&& mouseY>116&&mouseY<155){
     key = 'u';
   }
   if (mousePressed&&mouseX>755&&mouseX<795&& mouseY>270&&mouseY<310){
     key = 'p';
   }
   if (mousePressed&&mouseX>755&&mouseX<795&& mouseY>311&&mouseY<350){
     key = 'o';
   }
   if (mousePressed&&mouseX>755&&mouseX<795&& mouseY>505&&mouseY<545){
     key = 's';
   }
   if (mousePressed&&mouseX>755&&mouseX<795&& mouseY>546&&mouseY<585){
     key = 'a';
   }
    
    
    
    if (key == 'q'){
    myPort.write(0); //send a 0
    println ("0");
    }
    if (key =='w'){
    myPort.write(1);//write '1' to Serial port
   // println("1"); //also print '1' to console
    }
    if (key =='e'){
    myPort.write(2);//write '1' to Serial port
   // println("1"); //also print '1' to console
    }
    if (key =='e'){
    myPort.write(2);
    }
    if (key =='r'){
    myPort.write(3);
    }
    if (key =='t'){
    myPort.write(4);
    }
    if (key =='y'){
    myPort.write(5);
    }
    if (key =='u'){
    myPort.write(6);
    }
    if (key =='i'){
    myPort.write(7);
    }
    if (key =='o'){
    myPort.write(8);
    }
    if (key =='p'){
    myPort.write(9);
    }
    if (key =='a'){
    myPort.write(10);
    }
    if (key =='s'){
    myPort.write(11);
    }
  }
  
  
  
  else if (scene==3) {
    background(red);
    rect(100, 190, 400, 400);
    fill(white);
    rect(550, 190, 400, 400);
    fill(black);
     if (mousePressed&&mouseX>100&&mouseX<500&& mouseY>190&&mouseY<590){
     key = 'd';
   }
  if (mousePressed&&mouseX>550&&mouseX<950&& mouseY>190&&mouseY<590){
     key = 'f';
   }
   if (key =='d'){
    myPort.write(12);
    }
    if (key =='f'){
    myPort.write(13);
    }
   if (key =='g'){
    myPort.write(14);
    }
    
  }
  
  if (key == '1') {
    scene =1;
  }
  if (key == '2') {
    scene =2;
  }
  if (key == '3') {
    scene =3;
  }
  
  
  println("x = " + mouseX);
  println("y =" + mouseY);
  
  
  
}
  
 
