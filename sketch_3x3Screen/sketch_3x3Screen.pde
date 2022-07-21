//Global Variables
color black = #000000;
color backgroundColor;
float xClickMe, yClickMe, ClickMeWidth, ClickMeHeight, xOrMe, yOrMe, OrMeWidth, OrMeHeight;
int xCenter, yCenter;



void setup() {
  size(950, 750);//Landscape
  xCenter = width/2;
  yCenter = height/2;
  
  backgroundColor = black;
  background(backgroundColor);
  
  
  
  //Population of 'Click Me'
  xClickMe = xCenter*1/4;
  yClickMe = yCenter - yCenter*2/3;
  ClickMeWidth = xCenter/2;
  ClickMeHeight = yCenter/2;
  //End Population
  
  
  //Population of 'Or Me'
  xOrMe = xCenter + xCenter*1/4;
  yOrMe = yCenter - yCenter*2/3;
  OrMeWidth = xCenter/2;
  OrMeHeight = yCenter/2;
  
  
  
  
  
  
  
  
  
  
  
};

void draw() {
  backgroundColor = black;
  background(backgroundColor);
  
  rect(xClickMe, yClickMe, ClickMeWidth, ClickMeHeight);
  rect(xOrMe, yOrMe, OrMeWidth, OrMeHeight);
  
};

void keyPressed() {
  
};

void mousePressed() {
  
} 
;
//End MAIN Program
