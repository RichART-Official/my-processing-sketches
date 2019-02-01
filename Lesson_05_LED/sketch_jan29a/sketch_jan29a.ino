int potPin = 0;   // select the pin for the LED
int valIn = 0; // variable to store the value we get from Processing

void setup() {
  Serial.begin(9600);// declare the ledPin as an OUTPUT
}

void loop() {

  valIn = int(analogRead(potPin) /4);
  Serial.write(valIn);
  delay(100);
}
