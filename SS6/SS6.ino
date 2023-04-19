const int LED = 11;
const int LED1= 10;
const int LED2= 9;
const int LED3= 8;
const int buttonPin = 7;
bool buttonState = LOW;
bool lastButtonState= LOW;
int p=0;
void setup() {
  // put your setup code here, to run once:
  pinMode(LED, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  //PinMode(LED3, OUTPUT);
  pinMode(buttonPin, INPUT);
}
void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH){
    p++;
    delay(50);
  }
  if(p ==1)
  {
      digitalWrite(LED,1);
    digitalWrite(LED2,0);
    digitalWrite(LED1,0);
    delay(100);
    digitalWrite(LED,0);
    digitalWrite(LED2,1);
    digitalWrite(LED1,0);
    delay(100);
    digitalWrite(LED,0);
    digitalWrite(LED2,0);
    digitalWrite(LED1,1);
  }
   if(p ==2){
    delay(150);
    digitalWrite(LED,0);
    digitalWrite(LED2,1);
    delay(100);
    digitalWrite(LED1,1);
    digitalWrite(LED3,1);
  
    }
   }
