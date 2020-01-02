/* DigiOBSCURA Camera Firmware.
    This makes it act like a digital camera.
    Follow the instructaions on the OLED.
    Created by Sean Hodgins
    Reviewed by Vincent STRAGIER (02 jan 2020)
    Watch the Video Tutorial on Youtube - http://youtube.com/seanhodginsfilms
    Support my Open Source Projects on Patreon! - https://patreon.com/seanhodgins
    This software is licences under cc-by-sa-nc-3.0
**/

#include <Arduino.h>
#include <U8g2lib.h>

#include <SD.h>
#include <SPI.h>

// It is better to use const instead of the define preprocessor command
// DGO logo
const uint8_t logo_width = 8;
const uint8_t logo_height = 48;

const uint8_t DGO_bits[] = {0x00, 0x00, 0x00, 0x1F, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xCF, 0x00, 0x00, 0x00,
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

U8G2_SSD1306_64X48_ER_F_4W_SW_SPI oled(U8G2_R0, 9, 12, 13, 10, 11);  // (CLK, DATA, CS, DC, RESET)

// PINS
const uint8_t SCOL[5] = {8, A5, A1, A2, 3};  //A0, A1, A2, A3, A4 Respectively on Arduino
const uint8_t SROW[5] = {1, 0, 7, 38, 2};
const uint8_t CS = 6;
const uint8_t WR = 5;
const uint8_t EN = A0;
const uint8_t LED = 4;
const uint8_t Shutter = PIN_LED_RXL;

Sd2Card sd;
File file;
SdVolume volume;
const uint8_t cardPin = 21;  // pin that the SD is connected to (d8 for SparkFun MicroSD shield)

/* Not used
  volatile int output = 0;
  volatile int sensor = 0;
*/
const uint8_t OUTCOL = A3;  // COL needs to be an OUTPUT with 3.3V
const uint8_t OUTROW = A4;  // ROW is the input (voltage divider middle)

// Pins maps
const uint8_t colfix[32] = {16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
const uint8_t rowfix[32] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16};

// Image buffer
uint32_t imgBuff[32][32];

const int w = 32;              // image width in pixels
const int h = 32;              // " height
const bool debugPrint = true;  // print details of process over serial?

// Used to normalise the picture
uint32_t gain = 0;
uint32_t low = 255;

// Used to define the size of the picture
const int imgSize = w * h;
uint16_t px[w * h];  // actual pixel data (grayscale - added programatically below)

// Function declarations
void pixelSelect(int col, int row, int lastcol = 0, int lastrow = 0);
uint32_t snapShot(uint16_t avgCount = 10);
uint32_t nextFilenameIndex(bool reset = false, String filename = "DGO_", String extension = ".bmp");
void writeImage(String filename = "DGO_", String extension = ".bmp");
void drawLogo(void);
void countDown(uint8_t count = 3);
void displayImage(uint32_t averageSensor);

void setup() {
  // Set the analog resolution (value in bit)
  analogReadResolution(12);

  // Initialise the oled screen
  oled.setFont(u8g2_font_helvB08_tr);
  oled.begin();
  oled.setFlipMode(1);

  // Draw the logo on the screen for 1 second
  oled.firstPage();
  do {
    drawLogo();
  } while (oled.nextPage());
  delay(1000);

  // Write some text on the screen for 1 second
  oled.firstPage();
  do {
    //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
    oled.drawStr(22, 15, "Digi");
    oled.drawStr(4, 30, "OBSCURA!");
  } while (oled.nextPage());
  delay(1000);

  for (int x = 0; x < 5; x++) {
    pinMode(SCOL[x], OUTPUT);
    digitalWrite(SCOL[x], LOW);
  }

  for (int x = 0; x < 5; x++) {
    pinMode(SROW[x], OUTPUT);
    digitalWrite(SROW[x], LOW);
  }

  // Set the pin mode (OUTPUTS)
  pinMode(CS, OUTPUT);
  pinMode(WR, OUTPUT);
  pinMode(EN, OUTPUT);
  pinMode(LED, OUTPUT);
  pinMode(OUTCOL, OUTPUT);

  // Initialise the pin states
  digitalWrite(CS, LOW);
  digitalWrite(WR, LOW);
  digitalWrite(EN, LOW);
  digitalWrite(LED, LOW);
  digitalWrite(OUTCOL, HIGH);

  // Set the pin mode (INPUTS)
  pinMode(OUTROW, INPUT);
  pinMode(Shutter, INPUT);

  // Initialise serial communication
  Serial.begin(115200);
  //while(!SerialUSB);

  // Initialise the SD card (display "Insert SD Card." if no card is present)
  while (!SD.begin(SPI_HALF_SPEED, cardPin)) {
    oled.firstPage();
    do {
      //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
      oled.drawStr(13, 15, "Insert");
      oled.drawStr(18, 30, "SD Card.");
    } while (oled.nextPage());
    delay(1000);
  }

  nextFilenameIndex();  // Initialise the index of the next file to create

  /* Not useful
    oled.firstPage();
    do {
      //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
      oled.drawStr(18, 30, "Loading.");
      oled.drawBox(0, 40, 64, 8);
    } while (oled.nextPage());
    delay(200);
  */

  oled.firstPage();
  do {
    //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
    oled.drawStr(13, 15, "Camera");
    oled.drawStr(18, 30, "Ready.");
  } while (oled.nextPage());
}

void loop() {
  while (!digitalRead(Shutter)) delay(0);  // Wait until Shutter pin state pass to LOW

  countDown(3);                         // Display the count down
  digitalWrite(LED, HIGH);              // Show that the camera is taking the picture
  uint32_t averageSensor = snapShot();  // Take the picture

  writeImage();            // Save the picture on the SD card
  digitalWrite(LED, LOW);  // Show that the camera did took the picture and that the picture has been saved

  displayImage(averageSensor);                                                  // Display the picture
  uint32_t previous_millis = millis();                                          // Start counter
  while (!digitalRead(Shutter) && millis() - previous_millis < 3000) delay(0);  // Wait until time or Shutter pressed

  if (!digitalRead(Shutter)) {  // Display "Camera Ready." only if the Shutter button is not pressed
    // Display the Camera Ready message
    oled.setFont(u8g2_font_helvB08_tr);
    oled.firstPage();
    do {
      //oled.userInterfaceSelectionList("BubbleBurst!", menuSELECT, "Start\nSettings");
      oled.drawStr(13, 15, "Camera");
      oled.drawStr(18, 30, "Ready.");
    } while (oled.nextPage());
  }
}

void pixelSelect(int col, int row, int lastcol, int lastrow) {
  uint8_t realrow = rowfix[row];
  uint8_t realcol = colfix[col];

  digitalWrite(WR, LOW);
  // delayMicroseconds(1000);
  //SerialUSB.println(realrow);
  //SerialUSB.println(realcol);
  if (lastcol != realcol) {
    for (int x = 0; x < 5; x++) {
      uint8_t state = bitRead(realcol, 4 - x);
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

uint32_t snapShot(uint16_t avgCount) {
  static uint32_t averageSensor = 0;
  low = 255;
  gain = 0;

  for (uint16_t row = 0; row < 32; row++) {
    for (uint16_t col = 0; col < 32; col++) {
      pixelSelect(col, row, 0, 0);  // Select the pixel to measure
      uint32_t avgRead = 0;

      for (uint16_t i = 0; i < avgCount; i++) {
        avgRead += analogRead(OUTROW);
        // Serial.print(avgRead);
        // Serial.print("...");
      }

      imgBuff[col][row] = avgRead;  // / avgCount;
      averageSensor += avgRead;
      gain = max(avgRead, gain);
      low = min(avgRead, low);
      // Serial.println(imgBuff[col][row]);
      // delay(1);
      //SerialUSB.print(" ");
    }
    //SerialUSB.println();
  }
  averageSensor = averageSensor / (gain - low);

  // Writting in the Serial take an eternity so mute it
  // Serial.print("Average Sensor Value: ");
  // Serial.println(averageSensor);
  return averageSensor;
}

// Go through all the SD card file to find the next value of the filename
uint32_t nextFilenameIndex(bool reset, String filename, String extension) {
  String tmp_filename = "";
  static uint32_t index = 0;  // Keep the index of the next file to create (replace filenum)

  if (reset) {
    index = 0;
  }

  // Go through the valid filenames
  while (true) {
    tmp_filename = filename + String(index) + extension;

    // If the tmp_filename does not exist yet we have the index or the next filename
    if (!(SD.exists(tmp_filename))) {
      break;
    }

    index++;
  }

  return index;
}

void writeImage(String filename, String extension) {
  String tmp_filename = "";

  file = SD.open(filename + String(nextFilenameIndex()) + extension, FILE_WRITE);

  if (file) {
    // set fileSize (used in bmp header)
    int rowSize = 4 * ((3 * w + 3) / 4);  // how many bytes in the row (used to create padding)
    int fileSize = 54 + h * rowSize;      // headers (54 bytes) + pixel data

    // create image data; heavily modified version via:
    // http://stackoverflow.com/a/2654860
    unsigned char *img = NULL;  // image data
    if (img) {                  // if there's already data in the array, clear it
      free(img);
    }

    img = (unsigned char *) malloc(3 * imgSize);

    for (int y = 0; y < h; y++) {
      for (int x = 0; x < w; x++) {
        int colorVal = map(imgBuff[31 - x][y], low, gain, 0, 255);
        // Serial.print(colorVal);  // classic formula for px listed in line
        // Serial.print("  ");
        img[(y * w + x) * 3 + 0] = (unsigned char)(colorVal);  // R
        img[(y * w + x) * 3 + 1] = (unsigned char)(colorVal);  // G
        img[(y * w + x) * 3 + 2] = (unsigned char)(colorVal);  // B
        // padding (the 4th byte) will be added later as needed...
      }
      // Serial.println();
    }

    // print px and img data for debugging
    if (debugPrint) {
      Serial.print("\nWriting \"");
      Serial.print(tmp_filename);
      Serial.print("\" to file...\n");

      for (int i = 0; i < imgSize; i++) {
        Serial.print(px[i], 5);
        Serial.print("  ");
        if (i > 0) {
          if ((i % 32) == 0) {
            Serial.println();
          }
        }
      }
    }

    // create padding (based on the number of pixels in a row
    unsigned char bmpPad[rowSize - 3 * w];
    for (uint8_t i = 0; i < sizeof(bmpPad); i++) {  // fill with 0s
      bmpPad[i] = 0;
    }

    // create file headers (also taken from StackOverflow example)
    // file header (always starts with BM!)
    unsigned char bmpFileHeader[14] = {'B', 'M', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0};
    // info about the file (size, etc)
    unsigned char bmpInfoHeader[40] = {40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 24, 0};

    bmpFileHeader[2] = (unsigned char)(fileSize);
    bmpFileHeader[3] = (unsigned char)(fileSize >> 8);
    bmpFileHeader[4] = (unsigned char)(fileSize >> 16);
    bmpFileHeader[5] = (unsigned char)(fileSize >> 24);

    bmpInfoHeader[4] = (unsigned char)(w);
    bmpInfoHeader[5] = (unsigned char)(w >> 8);
    bmpInfoHeader[6] = (unsigned char)(w >> 16);
    bmpInfoHeader[7] = (unsigned char)(w >> 24);
    bmpInfoHeader[8] = (unsigned char)(h);
    bmpInfoHeader[9] = (unsigned char)(h >> 8);
    bmpInfoHeader[10] = (unsigned char)(h >> 16);
    bmpInfoHeader[11] = (unsigned char)(h >> 24);

    // write the file (thanks forum!)
    file.write(bmpFileHeader, sizeof(bmpFileHeader));  // write file header
    file.write(bmpInfoHeader, sizeof(bmpInfoHeader));  // " info header

    for (int i = 0; i < h; i++) {                        // iterate image array
      file.write(img + (w * (h - i - 1) * 3), 3 * w);  // write px data
      file.write(bmpPad, (4 - (w * 3) % 4) % 4);       // and padding as needed
    }

    file.close();  // close file when done writing

    if (debugPrint) {
      Serial.print("\n\n---\n");
    }

  } else {
    Serial.print("Error opening: ");
    Serial.println(tmp_filename);
  }
}

void drawLogo(void) {
  /* Not used variable
  uint8_t mdy = 0;
  if (oled.getDisplayHeight() < 59) {
    mdy = 5;
  }
  */
  oled.drawBitmap(0, 0, logo_width, logo_height, DGO_bits);
}

void countDown(uint8_t count) {
  for (uint8_t counter = count; counter > 0; counter--) {
    oled.firstPage();
    do {
      oled.setFont(u8g2_font_fub25_tr);
      oled.drawStr(24, 35, String(counter).c_str());
    } while (oled.nextPage());
    delay(1000);
  }

  oled.firstPage();
  do {
    oled.setFont(u8g2_font_fub25_tr);
    oled.drawStr(2, 35, ":D");
  } while (oled.nextPage());
}

void displayImage(uint32_t averageSensor) {
  uint8_t buff[32][32];

  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      // uint32_t val = map(imgBuff[31 - x][y], low, gain, 0, 255);

      if (imgBuff[31 - x][y] > averageSensor) {
        buff[x][y] = 1;
      }

      else {
        buff[x][y] = 0;
      }
      /*
        Serial.print(buff[x][y]);
        Serial.print("  ");
      */
    }
    // Serial.println();
  }

  oled.firstPage();
  do {
    for (int col = 0; col < 32; col++) {
      for (int row = 0; row < 32; row++) {
        oled.setDrawColor(buff[row][31 - col]);
        oled.drawPixel(row + 16, col + 8);
      }
    }
  } while (oled.nextPage());
  oled.setDrawColor(1);
}
