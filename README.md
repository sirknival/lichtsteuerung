# Lichtsteuerung RaRo Heim
## About
Concept by: Daniel Schnitzer \
Realised by : Daniel Schnitzer & Florian Langer \
Maintained by: Florian Langer \
Purpose: Controll ceiling lights in RaRo-Heim \
Version Nr.: 3.1.0 \
Last Update date: 26.12.2022 \
Warranty period: 2017 - 2022

## Features

- Adjusting values for direct lighting with a potentiometer
- Adjusting values for indirect lighting with a potentiometer
- Ajusting front, center and rear lighting with a poteniometer
- Turn off all lightings with a button
- Turn on all lightings with abutton
- Store and load lighting settings with a button
   - STORE = press 2 sec the button
   - LOAD = press less than 2 sec the button
- Toggle modus of direct lighting
   - MODES(values): OFF, POT, ON
- Toggle modus of indirect lighting
    - MODES(values): OFF, POT, ON
- Reducing acoustic noise
 
  ## Abbreviations

 - Btn...Button (Pull-up Resistor - Inversed Logic - Btn pressed = LOW))
 - Swt...Switch
 - Pot...Potentiometer
 
 - All...all LEDs
 - Ent...Entrance
 - Mod...Mode
 - Dir...Direct lighting
 - Ind...Indirect lighting
 - Fro...Position: Front
 - Cen...Position: Center
 - Rea...Position: Rear


 ## Known Bugs
- Light brightness transistions are flickering - //MEDIUM PRIORITY
- Some acoustic noise due to timer setings left //FIXED 


## Notes and Concept
- Every led group consists of four serial wired 12V LED Strips (each about 1m lenght, can vary!) resulting in a total operating voltage of 48V.

- User can input the wanted lighting scene using the "Light Control Panel" or the button located at the entrance. Brightness is then controlled by a PWM signal from the Arduino Pro Mini ("Light Control Unit"). Based on these PWM signals, the power electronics ("Lichtsteuerung") are switching the LED groups (eg. IND_FRO = Indirect - Front).



