//Global Variables
color black = #000000;
color backgroundColor;
float xClickMe, yClickMe, ClickMeWidth, ClickMeHeight, xOrMe, yOrMe, OrMeWidth, OrMeHeight;
int xCenter, yCenter;

//PFont 


void setup() {
  size(950, 750);//Landscape
  int appWidth = width;
  int appHeight = height; 

  //Display Geometry 
  if (width > displayWidth || height > displayHeight) {
    println("This display is too big for your display monitor");
    appWidth = displayWidth; //Note: displayWidth renders the current monitors width
    appHeight = displayHeight; //Note: displayHeight renders the current monitors height
  } else {
    println("CANVAS is good on your display.");
  };
  //
  
  //Display Orientation
  String ls = "Landscape or Square", p = "Portrait", DO = "Display Orientation", instruct = "Flip your screen";
  //String orientation = () ? true : false; //This is a Trenary operator to populate a variable 
  String orientation = (appWidth >= appHeight) ? ls : p; 
  println(DO, orientation);
  if (orientation  == ls) {
    println("Good to Go");
  } else {
    appWidth *= 0; //is an assignment operator, works like -> appWidth = appWidth * 0
    appHeight *= 0; //is an assignment operator, works like -> appHeight = appHeight * 0
    println(instruct)
  };
  //
  
  //Population using appWidth and appHeight



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
