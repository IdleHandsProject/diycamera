/* 
 *  DigiOBSCURA TEST WEBCAM FIRMWARE 
 *  
 *  To be run with digiOBSCURA_Webcam_Processing.

    Created by Sean Hodgins
    Watch the Video Tutorial on Youtube - http://youtube.com/seanhodginsfilms
    Support my Open Source Projects on Patreon! - https://patreon.com/seanhodgins

    This software is licences under cc-by-sa-nc-3.0
*/

int SCOL[5] = {8, A5, A1, A2, 3};  //A0, A1, A2, A3, A4 Respectively on Arduino
int SROW[5] = {1, 0, 7, 38, 2};
int CS = 6;
int WR = 5;
int EN = A0;
int LED = 4;
int colfix[32] = {16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
int rowfix[32] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16};

int imgRAM[32][32];

volatile int output = 0;
volatile int sensor = 0;
int OUTCOL = A3; //COL needs to be an OUTPUT with 3.3V
int OUTROW = A4; //ROW is the input (voltage divider middle)
int lastcol = 0;
int lastrow = 0;
void setup() {
  // put your setup code here, to run once:
  analogReadResolution(12);
  for (int x = 0; x < 5; x++) {
    pinMode(SCOL[x], OUTPUT);
    digitalWrite(SCOL[x], LOW);
  }
  for (int x = 0; x < 5; x++) {
    pinMode(SROW[x], OUTPUT);
    digitalWrite(SROW[x], LOW);
  }
  pinMode(CS, OUTPUT);
  digitalWrite(CS, LOW);
  pinMode(WR, OUTPUT);
  digitalWrite(WR, LOW);
  pinMode(EN, OUTPUT);
  digitalWrite(EN, LOW);
pinMode(LED, OUTPUT);
  digitalWrite(LED, LOW);
  pinMode(OUTCOL, OUTPUT);
  digitalWrite(OUTCOL, HIGH);
  pinMode(OUTROW, INPUT);

  Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:

  while (Serial.available() == 0);
  int colval = Serial.parseInt();
  //Serial.println(colval);
  digitalWrite(LED,HIGH);
  while (Serial.available() == 0);
  int rowval = Serial.parseInt();
  //Serial.println(rowval);
  output = 0;
  pixelSelect(colval, rowval);

  volatile int avg = 0;
  int numavg = 1;
//  for (int x = 0; x < 5; x++) {
//
//    int values = digitalRead(SCOL[4-x]);
//    
//    Serial.print(values);
//  }
//  Serial.println();
//    for (int x = 0; x < 5; x++) {
//
//    int values = digitalRead(SROW[4-x]);
//    
//    Serial.print(values);
//  }
//  Serial.println();
  for (int i = 0; i < numavg; i++) {
    sensor = analogRead(OUTROW);
    //Serial.println(sensor);
    avg = sensor + avg;
    //delayMicroseconds(1000);
  }
  output = avg / numavg;
  //output = map(output, 0, 4096, 0, 255);
  //output = constrain(output, 0, 255);
  Serial.println(output);
  digitalWrite(LED,LOW);
}



void pixelSelect(int col, int row) {
  int realrow = rowfix[row];
  int realcol = colfix[col];

  digitalWrite(WR, LOW);
  delayMicroseconds(1000);
  //Serial.println(realrow);
  //Serial.println(realcol);
  if(lastcol != realcol){
  for (int x = 0; x < 5; x++) {
    byte state = bitRead(realcol, 4-x);
    digitalWrite(SCOL[4-x], state);
    lastcol = realcol;
    //Serial.print(state);
  }
  //Serial.println();
  delayMicroseconds(1000);
  }
  if (lastrow != realrow){
  for (int y = 0; y < 5; y++) {
    byte state1 = bitRead(realrow, 4-y);
    digitalWrite(SROW[4-y], state1);
    lastrow = realrow;
    //Serial.print(state1);
  }
  //Serial.println();
  delayMicroseconds(1000);
  }
  digitalWrite(WR, HIGH);
  

}
