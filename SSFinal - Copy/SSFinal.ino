//Receives data over Serial port from Processing to control 2 LEDS
//Hook up LEDs to pins 4 and 8;


byte val; // stores data received from serial port
const int LED1 = 7; // variable for which pin
const int LED2 = 8; // variable for which pin
const int LED3 = 9;
const int LED4 = 10;
const int LED5 = 11;
const int LED6 = 12;
const int LED7 =6;




void setup() {
  pinMode(LED1, OUTPUT); // set pin as output
  pinMode(LED2, OUTPUT); // set pin as output
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(LED7, OUTPUT);
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }
  if (val == 0) { // If 0 received
    digitalWrite(LED1, LOW); // turn LEDs off
   // digitalWrite(LED2, LOW);
  }
  else if (val == 1) { // If 1 received
    digitalWrite(LED1, HIGH); // turn the LED at pin 1 on
  }
  else if (val == 2) { 
    digitalWrite(LED2, HIGH); 
  }
  else if (val == 3) { 
    digitalWrite(LED2, LOW);
  }
  else if (val == 4) { 
    digitalWrite(LED3, HIGH);
  }
  else if (val == 5) { 
    digitalWrite(LED3, LOW);
  }
  else if (val == 6) { 
    digitalWrite(LED4, HIGH);
  }
  else if (val == 7) { 
    digitalWrite(LED4, LOW);
  }
  else if (val == 8) { 
    digitalWrite(LED5, HIGH);
  }
  else if (val == 9) { 
    digitalWrite(LED5, LOW);
  }
  else if (val == 10) { 
    digitalWrite(LED6, HIGH);
  }
  else if (val == 11) { 
    digitalWrite(LED6, LOW);
  }
  else if (val == 12) { 
    digitalWrite(LED6, LOW);
    digitalWrite(LED5, LOW);
    digitalWrite(LED4, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED1, LOW);
  }
  else if (val == 13) { 
    digitalWrite(LED6, HIGH);
    digitalWrite(LED5, HIGH);
    digitalWrite(LED4, HIGH);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED2, HIGH);
    digitalWrite(LED1, HIGH);
  }
  if (val == 14) { 
    digitalWrite(LED6, HIGH);
    delay(1000);
    digitalWrite(LED6, LOW);
    delay(1000);
    digitalWrite(LED5, HIGH);
    delay(1000);
    digitalWrite(LED5, LOW);
    delay(1000);
    digitalWrite(LED4, HIGH);
    delay(1000);
    digitalWrite(LED4, LOW);
    delay(1000);
    digitalWrite(LED3, HIGH);
    delay(1000);
    digitalWrite(LED3, LOW);
    delay(1000);
    digitalWrite(LED2, HIGH);
    delay(1000);
    digitalWrite(LED2, LOW);
    delay(1000);
    digitalWrite(LED1, HIGH);
    delay(1000);
    digitalWrite(LED1, LOW);

    
  }
  if (val == 15) {
    digitalWrite(LED7, HIGH);
  }
  if (val == 16) {
    digitalWrite(LED7, LOW);
  }
  
  delay(10); // Wait 10 milliseconds
}