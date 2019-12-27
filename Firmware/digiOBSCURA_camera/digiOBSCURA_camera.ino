/* DigiOBSCURA Camera Firmware. 
 *  This makes it act like a digital camera.
 *  Follow the instructaions on the OLED.

    Created by Sean Hodgins
    Watch the Video Tutorial on Youtube - http://youtube.com/seanhodginsfilms
    Support my Open Source Projects on Patreon! - https://patreon.com/seanhodgins

    This software is licences under cc-by-sa-nc-3.0
*/
#include <Arduino.h>
#include <U8g2lib.h>

#include <SPI.h>
#include <SD.h>

#define logo_width 8
#define logo_height 48

static unsigned char DGO_bits[] = {0x00, 0x00, 0x00, 0x1F, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xCF, 0x00, 0x00, 0x00,
                                   0x00, 0x00, 0x07, 0xFF, 0xE7, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x1F, 0xFF, 0xE7, 0xF8, 0x00, 0x00,
                                   0x00, 0x00, 0x3F, 0xFF, 0xF3, 0xFC, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xF3, 0xFF, 0x00, 0x00,
                                   0x00, 0x00, 0x7F, 0xFF, 0xF9, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x07, 0xFF, 0xF9, 0xFF, 0xC0, 0x00,
                                   0x00, 0x07, 0x80, 0x7F, 0xFD, 0xFF, 0xE0, 0x00, 0x00, 0x07, 0xF8, 0x03, 0xFC, 0xFF, 0xE0, 0x00,
                                   0x00, 0x0F, 0xFF, 0xC0, 0x3E, 0xFF, 0xE0, 0x00, 0x00, 0x1F, 0xFF, 0xC0, 0x00, 0x7F, 0xE0, 0x00,
                                   0x00, 0x1F, 0xFF, 0x80, 0x00, 0x7F, 0xC0, 0x00, 0x00, 0x3F, 0xFF, 0x00, 0x00, 0x3F, 0xCC, 0x00,
                                   0x00, 0x3F, 0xFE, 0x00, 0x00, 0x3F, 0x9C, 0x00, 0x00, 0x7F, 0xF8, 0x00, 0x00, 0x1F, 0x9E, 0x00,
                                   0x00, 0x7F, 0xF0, 0x00, 0x00, 0x1F, 0x3E, 0x00, 0x00, 0x7F, 0xE0, 0x00, 0x00, 0x0F, 0x3E, 0x00,
                                   0x00, 0x7F, 0xC0, 0x00, 0x00, 0x06, 0x7E, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x06, 0x7F, 0x00,
                                   0x00, 0xFE, 0x20, 0x00, 0x00, 0x06, 0x7F, 0x00, 0x00, 0xFC, 0xE0, 0x00, 0x00, 0x00, 0xFF, 0x00,
                                   0x00, 0xF9, 0xE0, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0xE3, 0xE0, 0x00, 0x00, 0x01, 0xFF, 0x00,
                                   0x00, 0xC7, 0xE0, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x00, 0x1F, 0xE0, 0x00, 0x00, 0x03, 0xFF, 0x00,
                                   0x00, 0x3F, 0xE0, 0x00, 0x00, 0x03, 0xFF, 0x00, 0x00, 0x7F, 0xE0, 0x00, 0x00, 0x07, 0xFF, 0x00,
                                   0x00, 0x7F, 0xE0, 0x00, 0x00, 0x07, 0xFF, 0x00, 0x00, 0x7F, 0xE0, 0x00, 0x00, 0x0F, 0xFE, 0x00,
                                   0x00, 0x7F, 0xE0, 0x00, 0x00, 0x0F, 0xFC, 0x00, 0x00, 0x7F, 0xE0, 0x00, 0x00, 0x1F, 0x80, 0x00,
                                   0x00, 0x3F, 0xE4, 0x00, 0x00, 0x18, 0x04, 0x00, 0x00, 0x3F, 0xE6, 0x00, 0x00, 0x00, 0x7C, 0x00,
                                   0x00, 0x3F, 0xE7, 0x80, 0x00, 0x0F, 0xFC, 0x00, 0x00, 0x1F, 0xE7, 0xC0, 0x00, 0xFF, 0xF8, 0x00,
                                   0x00, 0x1F, 0xE7, 0xE0, 0x1F, 0xFF, 0xF8, 0x00, 0x00, 0x0F, 0xE7, 0xF0, 0xFF, 0xFF, 0xF0, 0x00,
                                   0x00, 0x07, 0xE7, 0xFC, 0xFF, 0xFF, 0xE0, 0x00, 0x00, 0x03, 0xE7, 0xFE, 0x3F, 0xFF, 0xE0, 0x00,
                                   0x00, 0x03, 0xE7, 0xFF, 0x1F, 0xFF, 0xC0, 0x00, 0x00, 0x01, 0xE7, 0xFF, 0xCF, 0xFF, 0x80, 0x00,
                                   0x00, 0x00, 0x67, 0xFF, 0xE7, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x07, 0xFF, 0xF1, 0xFC, 0x00, 0x00,
                                   0x00, 0x00, 0x07, 0xFF, 0xF8, 0xF8, 0x00, 0x00, 0x00, 0x00, 0x03, 0xFF, 0xFE, 0x60, 0x00, 0x00,
                                   0x00, 0x00, 0x00, 0xFF, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0xF0, 0x00, 0x00, 0x00
                                  };

U8G2_SSD1306_64X48_ER_F_4W_SW_SPI oled(U8G2_R0, 9, 12, 13, 10, 11);  //(CLK, DATA, CS, DC, RESET)

int SCOL[5] = {8, A5, A1, A2, 3};  //A0, A1, A2, A3, A4 Respectively on Arduino
int SROW[5] = {1, 0, 7, 38, 2};
int CS = 6;
int WR = 5;
int EN = A0;
int LED = 4;
int colfix[32] = {16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
int rowfix[32] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16};
int avgCount = 10;
int imgBuff[32][32];

unsigned long averageSensor = 0;

int Shutter = PIN_LED_RXL;

char name[] = "DGO_0000.bmp";       // filename convention (will auto-increment)
const int w = 32;                   // image width in pixels
const int h = 32;                    // " height
const boolean debugPrint = true;    // print details of process over serial?

long gain = 0;
long low = 255;

const int imgSize = w * h;
int px[w * h];                      // actual pixel data (grayscale - added programatically below)

Sd2Card sd;
File file;
SdVolume volume;
const uint8_t cardPin = 21;          // pin that the SD is connected to (d8 for SparkFun MicroSD shield)

int filenum = 0;

volatile int output = 0;
volatile int sensor = 0;
int OUTCOL = A3; //COL needs to be an OUTPUT with 3.3V
int OUTROW = A4; //ROW is the input (voltage divider middle)
int lastcol = 0;
int lastrow = 0;
void setup() {
  // put your setup code here, to run once:
  analogReadResolution(12);
  oled.setFont(u8g2_font_helvB08_tr);
  oled.begin();
  oled.setFlipMode(1);
  oled.firstPage();
  do {
    drawLogo();
  } while ( oled.nextPage() );

  delay(1000);
  oled.firstPage();
  do {
    //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
    oled.drawStr(22, 15, "Digi");
    oled.drawStr(4, 30, "OBSCURA!");
  } while ( oled.nextPage() );
  delay(1000);

  

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
  pinMode(Shutter, INPUT);


  Serial.begin(115200);
  //while(!SerialUSB);

 while (!SD.begin(SPI_HALF_SPEED, cardPin)) {
    oled.firstPage();
    do {
    
      //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
      oled.drawStr(13, 15, "Insert");
    oled.drawStr(18, 30, "SD Card.");
      
    } while ( oled.nextPage() );
    delay(1000);
  }
  for (int i = 0; i < 10000; i++) {
    name[4] = (i / 1000) % 10 + '0'; // thousands place
    name[5] = (i / 100) % 10 + '0'; // hundreds
    name[6] = (i / 10) % 10 + '0';  // tens
    name[7] = i % 10 + '0';         // ones
    Serial.print("Checking for file: ");
    Serial.println(name);
    filenum = i;
    oled.firstPage();
    do {
      //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
      oled.drawStr(15, 30, "Loading.");
      oled.drawBox(0, 40, i/4, 8);
      
    } while ( oled.nextPage() );
    if (!(SD.exists(name))) {
      break;
    }
  }
  oled.firstPage();
    do {
      //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
      oled.drawStr(18, 30, "Loading.");
      oled.drawBox(0, 40, 64, 8);
      
    } while ( oled.nextPage() );
    delay(200);
    oled.firstPage();
  do {
    //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
    oled.drawStr(13, 15, "Camera");
    oled.drawStr(18, 30, "Ready.");
  } while ( oled.nextPage() );
}

void loop() {

  int buttpress = digitalRead(Shutter);
  if (buttpress == 0) {
    while (buttpress == 0) {
      buttpress = digitalRead(Shutter);
    }
    countDown();
    digitalWrite(LED, HIGH);
    snapShot();
    digitalWrite(LED, LOW);
    digitalWrite(LED, HIGH);
    writeImage();
    digitalWrite(LED, LOW);
    Serial.read();
    Serial.flush();

    displayImage();
    delay(3000);
    oled.setFont(u8g2_font_helvB08_tr);
    oled.firstPage();
    do {
      //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
      oled.drawStr(13, 15, "Camera");
      oled.drawStr(18, 30, "Ready.");
    } while ( oled.nextPage() );

  }
  //delay(10000);
}



void pixelSelect(int col, int row) {
  int realrow = rowfix[row];
  int realcol = colfix[col];

  digitalWrite(WR, LOW);
  delayMicroseconds(1000);
  //SerialUSB.println(realrow);
  //SerialUSB.println(realcol);
  if (lastcol != realcol) {
    for (int x = 0; x < 5; x++) {
      byte state = bitRead(realcol, 4 - x);
      digitalWrite(SCOL[4 - x], state);
      lastcol = realcol;
      //SerialUSB.print(state);
    }
    //SerialUSB.println();
    delayMicroseconds(1000);
  }
  if (lastrow != realrow) {
    for (int y = 0; y < 5; y++) {
      byte state1 = bitRead(realrow, 4 - y);
      digitalWrite(SROW[4 - y], state1);
      lastrow = realrow;
      //SerialUSB.print(state1);
    }
    //SerialUSB.println();
    delayMicroseconds(1000);
  }
  digitalWrite(WR, HIGH);
}


void snapShot() {
  low = 255;
  gain = 0;
  averageSensor = 0;
  for (int row = 0; row < 32; row++) {
    for (int col = 0; col < 32; col++) {
      pixelSelect(col, row);
      unsigned long avgRead = 0;
      for (int i = 0; i < avgCount; i++) {
        avgRead = analogRead(OUTROW) + avgRead;
        Serial.print(avgRead);
        Serial.print("...");
      }
      
      imgBuff[col][row] = avgRead;// / avgCount;
      averageSensor = imgBuff[col][row] + averageSensor;
      gain = max(imgBuff[col][row], gain);
      low = min(imgBuff[col][row], low);
      Serial.println(imgBuff[col][row]);
      delay(1);
      //SerialUSB.print(" ");
    }
    //SerialUSB.println();
  }
  averageSensor = averageSensor / (gain - low);
  Serial.print("Average Sensor Value: ");
  Serial.println(averageSensor);
}

void writeImage() {
  for (int i = filenum; i < 10000; i++) {
    name[4] = (i / 1000) % 10 + '0'; // thousands place
    name[5] = (i / 100) % 10 + '0'; // hundreds
    name[6] = (i / 10) % 10 + '0';  // tens
    name[7] = i % 10 + '0';         // ones
    Serial.print("Checking for file: ");
    Serial.println(name);
    
    if (!(SD.exists(name))) {
      break;
    }
  }
  filenum++;
  file = SD.open(name, FILE_WRITE);
  if (file) {
    // set fileSize (used in bmp header)
    int rowSize = 4 * ((3 * w + 3) / 4);  // how many bytes in the row (used to create padding)
    int fileSize = 54 + h * rowSize;      // headers (54 bytes) + pixel data

    // create image data; heavily modified version via:
    // http://stackoverflow.com/a/2654860
    unsigned char *img = NULL;            // image data
    if (img) {                            // if there's already data in the array, clear it
      free(img);
    }
    img = (unsigned char *)malloc(3 * imgSize);

    for (int y = 0; y < h; y++) {
      for (int x = 0; x < w; x++) {
        int colorVal = map(imgBuff[31-x][y], low, gain, 0, 255);
        Serial.print(colorVal);// classic formula for px listed in line
        Serial.print("  ");
        img[(y * w + x) * 3 + 0] = (unsigned char)(colorVal); // R
        img[(y * w + x) * 3 + 1] = (unsigned char)(colorVal); // G
        img[(y * w + x) * 3 + 2] = (unsigned char)(colorVal); // B
        // padding (the 4th byte) will be added later as needed...
      }
      Serial.println();
    }

    // print px and img data for debugging
    if (debugPrint) {
      Serial.print("\nWriting \"");
      Serial.print(name);
      Serial.print("\" to file...\n");
      for (int i = 0; i < imgSize; i++) {
        //Serial.print(px[i], 5);
        // Serial.print("  ");
        if (i > 0) {
          if ((i % 32) == 0) {
            Serial.println();
          }
        }
      }
    }

    // create padding (based on the number of pixels in a row
    unsigned char bmpPad[rowSize - 3 * w];
    for (int i = 0; i < sizeof(bmpPad); i++) {     // fill with 0s
      bmpPad[i] = 0;
    }

    // create file headers (also taken from StackOverflow example)
    unsigned char bmpFileHeader[14] = {            // file header (always starts with BM!)
      'B', 'M', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0
    };
    unsigned char bmpInfoHeader[40] = {            // info about the file (size, etc)
      40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 24, 0
    };

    bmpFileHeader[ 2] = (unsigned char)(fileSize      );
    bmpFileHeader[ 3] = (unsigned char)(fileSize >>  8);
    bmpFileHeader[ 4] = (unsigned char)(fileSize >> 16);
    bmpFileHeader[ 5] = (unsigned char)(fileSize >> 24);

    bmpInfoHeader[ 4] = (unsigned char)(       w      );
    bmpInfoHeader[ 5] = (unsigned char)(       w >>  8);
    bmpInfoHeader[ 6] = (unsigned char)(       w >> 16);
    bmpInfoHeader[ 7] = (unsigned char)(       w >> 24);
    bmpInfoHeader[ 8] = (unsigned char)(       h      );
    bmpInfoHeader[ 9] = (unsigned char)(       h >>  8);
    bmpInfoHeader[10] = (unsigned char)(       h >> 16);
    bmpInfoHeader[11] = (unsigned char)(       h >> 24);

    // write the file (thanks forum!)
    file.write(bmpFileHeader, sizeof(bmpFileHeader));    // write file header
    file.write(bmpInfoHeader, sizeof(bmpInfoHeader));    // " info header

    for (int i = 0; i < h; i++) {                        // iterate image array
      file.write(img + (w * (h - i - 1) * 3), 3 * w);    // write px data
      file.write(bmpPad, (4 - (w * 3) % 4) % 4);         // and padding as needed
    }
    file.close();                                        // close file when done writing

    if (debugPrint) {
      Serial.print("\n\n---\n");
    }
  }
  else {
    Serial.print("Error opening: ");
    Serial.println(name);
  }
}


void drawLogo(void)
{
  uint8_t mdy = 0;
  if ( oled.getDisplayHeight() < 59 )
    mdy = 5;
  oled.drawBitmap(0, 0, logo_width, logo_height, DGO_bits);
}

void countDown() {
  oled.firstPage();
  do {
    oled.setFont(u8g2_font_fub25_tr);
    oled.drawStr(24, 35, "3");
  } while ( oled.nextPage() );
  delay(1000);
  oled.firstPage();
  do {
    oled.setFont(u8g2_font_fub25_tr);
    oled.drawStr(24, 35, "2");
  } while ( oled.nextPage() );
  delay(1000);
  oled.firstPage();
  do {
    oled.setFont(u8g2_font_fub25_tr);
    oled.drawStr(24, 35, "1");
  } while ( oled.nextPage() );
  delay(1000);
  oled.firstPage();
  do {
    oled.setFont(u8g2_font_fub25_tr);
    oled.drawStr(2, 35, ":D");
  } while ( oled.nextPage() );
}

void displayImage() {
  byte buff[32][32];
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      unsigned long val = map(imgBuff[31-x][y], low, gain, 0, 255);
      if (imgBuff[31-x][y] > averageSensor) {
        buff[x][y] = 1;
      }
      else {
        buff[x][y] = 0;
      }
      Serial.print(buff[x][y]);
      Serial.print("  ");
    }
    Serial.println();
  }
  oled.firstPage();
  do {
    for (int col = 0; col < 32; col++) {
      for (int row = 0; row < 32; row++) {
        oled.setDrawColor(buff[row][31-col]);
        oled.drawPixel(row+16, col+8);
      }
    }
  } while ( oled.nextPage() );
  oled.setDrawColor(1);
}
