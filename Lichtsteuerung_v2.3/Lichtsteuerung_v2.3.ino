/*
  ________________Notes________________

  Based on the concept of @Daniel Schnitzer
  Developed and extended by @Florian Langer
  Purpose: Controll lights in RaRo-Heim
  Version Nr.: 2.3.2
  Last Update date: 17.04.2018
  _______________Features_______________

  #Adjusting values for direct lighting with a potentiometer
  #Adjusting values for indirect lighting with a potentiometer
  #Ajusting front, center and rear lighting with a poteniometer
  #Turn off all lightings with a button
  #Turn on all lightings with abutton
  #Store and load lighting settings with a button
      STORE = press 2 sec the button
      LOAD = press less than 2 sec the button
  #Toggle modus of direct lighting
      MODES(values): OFF, POT, ON
  #Toggle modus of indirect lighting
      MODES(values): OFF, POT, ON
  #Reducing acoustic noise
  ______________Known Bugs______________

  #Lights starts randomly after some time - HIGH PRIORITY
  #Some acoustic noise left //UNREMOVABLE due to timer setings

  ____________Abbreviations_____________

  Btn...Button (Pull-up Resistor - Inversed Logic - Btn pressed = LOW))
  Swt...Switch
  Pot...Potentiometer

  All...all LEDs
  Ent...Entrance
  Mod...Mode
  Dir...Direct lighting
  Ind...Indirect lighting
  Fro...Position: Front
  Cen...Position: Center
  Rea...Position: Rear

  ________Arrays for lightvalues________
  ___________EEPROM-addresses___________

             ActualLightState:

  0...LedDirFro...Pin 5
  1...LedDirCen...Pin 9
  2...LedDirRea...Pin 6
  3...LedIndFro...Pin 11
  4...LedIndCen...Pin 10
  5...LedIndRea...Pin 3

            ModeLightState:

  6...LedDirFro
  7...LedDirCen
  8...LedDirRea
  9...LedIndFro
  10...LedIndCen
  11...LedIndRea
  12...

  _________Arrays for Buttons_________

  0...BtnAllEnt ...Pin 7
  1...BtnAllMod ...Pin 2
  2...BtnAllOn  ...Pin 1
  3...BtnAllOff ...Pin 4
  4...BtnDir    ...Pin 13
  5...BtnInd    ...Pin 12
  6...

  ___________Arrays für Poti___________
  0...PotDir    ...Pin A3
  1...PotInd    ...Pin A2
  2...PotFroRea ...Pin A0
  3...
*/
#include <EEPROM.h>
//Sensor-pins:
const int BtnPin[] = { 7, 2, 1, 4, 13, 12 }; //Pins addressed
const int PotPin[] = { A3, A2, A0 };     //Pins addressed

//Actuator-pins:
const int LedPin[] = { 5, 9, 6, 11, 10, 3 }; //Pins addressed
const int VentPin = A1;

//Light states
byte ActualLightState[] = {  0, 0, 0, 0, 0, 0 };//current light values [0...255], at end of loop used for light controll
byte ModeLightState[] = { 0, 0, 0, 0, 0, 0 };   //light values of Mode-Btn [0...255]
byte MinLightState = 0;                         //min light values [0...255]
byte MaxLightState = 255;                       //max light values[0...255]


//Potentiometers
const byte UpperTolerance = 16;           //for Potentiometer
const byte LowerTolerance = 16;           //for Potentiometer
const byte ChangingTolerance = 24;        //for Potentiometer 5%
byte ActualPotState[] = { 0, 0, 0 };      //divided and mapped potentiometer values [0...255]
byte LastPotState[] = { 0, 0, 0 };        //last divided and mapped potentiometer values [0...255]

//Mode savings
unsigned long ModeSavingsDelay = 0;     //stores time codes for mode button
const long ModeWaitDelay = 2000;        //fixed waiting value ORGINAL VALUE 2000 - new 125
boolean ModeStartWait = false;          //true if waiting is active

//Changing Sequence
boolean LockFlagLight = true;        //Disables turning on the lights with Poti
boolean ActualLightStateChanged = HIGH; //goes high when any lightstate changed

//Debouncing buttons
unsigned long PrevMillisDebounce[] = { 0, 0, 0, 0, 0, 0 }; //stores the time codes
const long IntervDebounce = 50;         //debouncing delay time ORGINAL VALUE 50 - new 2
boolean LastButtonState[] = { HIGH, HIGH, HIGH, HIGH, HIGH, HIGH }; //stores the last measured buttonstate
boolean LockFlagButton[] = { false , false , false , false , false , false }; //true if the button is still pressed

void setup() {

  //TCCR0B = TCCR0B & 0b11111000 | 0x05;  //Changes timer freq to 61Hz - affect millis() -->  16 Times slower
  //TCCR1B = TCCR1B & 0b11111000 | 0x04;  //Changes timer freq. to 122Hz
  //TCCR2B = TCCR2B & 0b11111000 | 0x06;  //changes timer freq. to 122hz

  //Input pin configuration
  for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
    pinMode(BtnPin[ThisPin], INPUT_PULLUP);
  }
  for (int ThisPin = 0; ThisPin < 3; ThisPin++) {
    pinMode(PotPin[ThisPin], INPUT);
  }

  //Output pin configuration
  for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
    pinMode(LedPin[ThisPin], OUTPUT);
  }
  pinMode(VentPin, OUTPUT);

  //Loading light states from EEPROM
  for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
    ActualLightState[ThisPin] = EEPROM.read(ThisPin);   //Last used light values
    ModeLightState[ThisPin] = EEPROM.read(ThisPin + 6); //Last Mode light values
  }
  //Read first potentiometer values
  for (int ThisPin = 0; ThisPin < 3; ThisPin++) {
    LastPotState[ThisPin] =
      map(constrain(analogRead(PotPin[ThisPin]), (0 + LowerTolerance), (1023 - UpperTolerance)),
          (0 + LowerTolerance), (1023 - UpperTolerance), MinLightState, MaxLightState);
  }
}

void loop() {

  //Read and map potentiometer [Direct, Indirect controll and Front-Rear manipulation]
  for (int ThisPin = 0; ThisPin < 3; ThisPin++) {
    ActualPotState[ThisPin] =
      map(constrain(analogRead(PotPin[ThisPin]), (0 + LowerTolerance), (1023 - UpperTolerance)),
          (0 + LowerTolerance), (1023 - UpperTolerance), MinLightState, MaxLightState);
  }

  //Write potentiometer values [Direct and Indirect controll and Front-Rear manipulation]
  for (int ThisPin = 0; ThisPin < 3; ThisPin++) {
    if (abs(ActualPotState[ThisPin] - LastPotState[ThisPin]) > ChangingTolerance) {
      LastPotState[ThisPin] = ActualPotState[ThisPin];
      if (ThisPin == 0) {
        for (int Pin = 0; Pin < 3; Pin++) {
          ActualLightState[Pin] = ActualPotState[ThisPin];
        }
      }
      if (ThisPin == 1) {
        for (int Pin = 3; Pin < 6; Pin++) {
          ActualLightState[Pin] = ActualPotState[ThisPin];
        }
      }
      if (ThisPin == 2) {
        ActualLightState[0] = map(ActualPotState[2], MinLightState, MaxLightState, MinLightState, LastPotState[0]);
        ActualLightState[2] = map(ActualPotState[2], MinLightState, MaxLightState, LastPotState[0], MinLightState);
        if (ActualPotState[2] < 127)   ActualLightState[1] = map(ActualPotState[2], MinLightState, MaxLightState, LastPotState[0] * 0.3, LastPotState[0]);
        else                           ActualLightState[1] = map(ActualPotState[2], MinLightState, MaxLightState, LastPotState[0], LastPotState[0] * 0.3);
      }
      ActualLightStateChanged = true;
    }
  }

  //Pressing sequence for all buttons (inclusive debouncing)
  for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
    bool ThisReading = digitalRead(BtnPin[ThisPin]);
    if (ThisReading == HIGH)
      LockFlagButton[ThisPin] = false;
    if (ThisReading != LastButtonState[ThisPin])
      PrevMillisDebounce[ThisPin] = millis();
    if ((millis() - PrevMillisDebounce[ThisPin]) > IntervDebounce) {
      if (ThisReading == LOW && LockFlagButton[ThisPin] == false) {
        if (ThisPin == 0) { //BtnAllEnt
          if (ActualLightState[0] == 0 && ActualLightState[1] == 0 && ActualLightState[2] == 0 &&
              ActualLightState[3] == 0 && ActualLightState[4] == 0 && ActualLightState[5] == 0) {
            for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
              if (ActualLightState[ThisPin] == 0)  ActualLightState[ThisPin] = MaxLightState;
            }
          }
          else {
            for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
              ActualLightState[ThisPin] = 0;
            }
          }
          LockFlagButton[0] = true;
        }
        if (ThisPin == 1) { //BtnAllMod
          if (ModeStartWait == false) {
            ModeSavingsDelay = millis();
            ModeStartWait = true;
          }
          if (millis() - ModeSavingsDelay > ModeWaitDelay) {
            for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
              EEPROM.update(ThisPin + 6, ActualLightState[ThisPin]);
              ModeLightState[ThisPin] = ActualLightState[ThisPin];
            }
            for (int repeat = 0; repeat < 2; repeat ++) {
              for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
                analogWrite(LedPin[ThisPin], 0);
                delay(50);
                analogWrite(LedPin[ThisPin], 255);
                delay(50);
              }
            }
            LockFlagButton[1] = true;
          }
        }
        if (ThisPin == 2) { //BtnAllOn
          for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
            ActualLightState[ThisPin] = 255;
          }
        }
        if (ThisPin == 3) { //BtnAllOff
          for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
            ActualLightState[ThisPin] = 0;
          }
        }
        if (ThisPin == 4) { //BtnDir
          if (ActualLightState[0] == 0 && ActualLightState[1] == 0 && ActualLightState[2] == 0) {
            for (int ThisPin = 0; ThisPin < 3; ThisPin++) {
              ActualLightState[ThisPin] = ActualPotState[0];
            }
          }
          else if (ActualLightState[0] == MaxLightState &&
                   ActualLightState[1] == MaxLightState && ActualLightState[2] == MaxLightState) {
            for (int ThisPin = 0; ThisPin < 3; ThisPin++) {
              ActualLightState[ThisPin] = 0;
            }
          }
          else {
            for (int ThisPin = 0; ThisPin < 3; ThisPin++) {
              ActualLightState[ThisPin] = MaxLightState;
            }
          }
          LockFlagButton[4] = true;
        }
        if (ThisPin == 5) { //BtnInd
          if (ActualLightState[3] == 0 && ActualLightState[4] == 0 && ActualLightState[5] == 0) {
            for (int ThisPin = 3; ThisPin < 6; ThisPin++) {
              ActualLightState[ThisPin] = ActualPotState[1];
            }
          }
          else if (ActualLightState[3] == MaxLightState &&
                   ActualLightState[4] == MaxLightState && ActualLightState[5] == MaxLightState) {
            for (int ThisPin = 3; ThisPin < 6; ThisPin++) {
              ActualLightState[ThisPin] = 0;
            }
          }
          else {
            for (int ThisPin = 3; ThisPin < 6; ThisPin++) {
              ActualLightState[ThisPin] = MaxLightState;
            }
          }
          LockFlagButton[5] = true;
        }
        ActualLightStateChanged = true;
        LockFlagLight = false;
      }
    }
    LastButtonState[ThisPin] = ThisReading;
  }
  //Special Case - Change light values [MODE]
  if (millis() - ModeSavingsDelay > ModeWaitDelay && ModeStartWait == true) {
    for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
      ActualLightState[ThisPin] = ModeLightState[ThisPin];
      ModeStartWait = false;
      ActualLightStateChanged = true;
    }
  }
  //Changing sequence - Writes values to analog outputs
  if (ActualLightStateChanged == true && LockFlagLight == false) {
    for (int ThisPin = 0; ThisPin < 6; ThisPin++) {
      analogWrite(LedPin[ThisPin], ActualLightState[ThisPin]);
      EEPROM.update(ThisPin, ActualLightState[ThisPin]);
    }
    if (ActualLightState[0] == 0 && ActualLightState[1] == 0 && ActualLightState[2] == 0 &&
        ActualLightState[3] == 0 && ActualLightState[4] == 0 && ActualLightState[5] == 0) {
      LockFlagLight = true;
      digitalWrite(VentPin, LOW);          
    }
    else {
      digitalWrite(VentPin, HIGH);
    }
    ActualLightStateChanged = LOW;
  }
}
