/**
* To be run with the arduino firmware - digiOBSCURA_Webcam_Arduino
 */

int boxsize = 30;
int lf = 10;    // Linefeed in ASCII
String myString = null;
import processing.serial.*;
int brightness = 0;
Serial myPort;  // Create object from Serial class
//int val;        // Data received from the serial port
String val; 
boolean triggerSorting;
PFont f;

int cols = 32;
int rows = 32;
int gain = 255; 
int zero = 0;
int output = 0;
int[][] light = new int[cols][rows];

void setup() 
{
  size(960, 960);
  f = createFont("Arial",6,true); 
  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = "COM32";
  myPort = new Serial(this, portName, 115200);
  triggerSorting=false;
}

void draw() {
  background(255);
  textAlign(CENTER);
  getLightmulti(1);
  output = 0;
  for (int row = 0; row<32; row++) {
    for (int col =0; col<32; col++) {

      float max = float(light[31-col][row])/float(gain);
      output = int(max * float(255));
      fill(output);   // change brightness
      noStroke();
      square((col*boxsize), (row*boxsize), boxsize);

      String numbers = col + "," + row;
      fill(255);
      //text(numbers, (col*boxsize)+(boxsize/2)+1, (row*boxsize)+(boxsize-2));  
      //text(output, (col*boxsize)+(boxsize/2), (row*boxsize)+(boxsize-2));  
    }  
  }
  //delay(10000);
}

void getLight(){
  gain = 0;
  for (int row = 0; row<32; row++) {
    for (int col =0; col<32; col++) {
      myPort.write(Integer.toString(col));
      myPort.write(lf);
      myPort.write(Integer.toString(row));
      myPort.write(lf);
      while (myPort.available() > 0) {
        myString = myPort.readStringUntil(lf);
        if (myString != null) {
          brightness = Integer.parseInt(myString.trim());
          gain = max(gain, brightness);  
          //println(gain);
          print(col + ", " + row + ":");
          println(brightness);
        }
      }

      light[col][row] = brightness;                  // change brightness   
    }  

  }
}


void getLightmulti(int repeat){
  gain = 0;
  brightness = 0;
  
  for (int row = 0; row<32; row++){
    for (int col =0; col<32; col++) {
      for(int i = 0; i < repeat; i++){
      myPort.write(Integer.toString(col));
      myPort.write(lf);
      myPort.write(Integer.toString(row));
      myPort.write(lf);
      while (myPort.available() > 0) {
        myString = myPort.readStringUntil(lf);
        if (myString != null) {
          int val1 = Integer.parseInt(myString.trim());
          brightness = brightness + val1;
          gain = max(gain, brightness);
          zero = min(zero, brightness);
          //println(gain);
          //print(col + ", " + row + ":");
          //0println(brightness);
        }
      }
      }
     // print(col + "-" + row + ":");
     // println(brightness);

      
      light[col][row] = brightness;  
      brightness = 0;  
    }
   // println("-----------------");
   // delay(5000);
  }
}
