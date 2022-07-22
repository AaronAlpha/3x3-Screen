  //Global Variables
color black = #000000, red = #DE3131, purple = #9831DE, resetWhite = #FFFFFF; //black is a NightMode friendly color as it does not have any blue color in it
color backgroundColor, buttonFill1, buttonFill2;
float xClickMe, yClickMe, ClickMeWidth, ClickMeHeight, xClickMeButton, yClickMeButton;
float xOrMe, yOrMe, OrMeWidth, OrMeHeight, xOrMeButton, yOrMeButton;
int xCenter, yCenter;
String buttonText1 = "Click Me", buttonText2 = "Or Me";
PFont buttonText1Font, buttonText2Font;
int buttonText1Size, buttonText2Size;
boolean rectOn = false, ellipseOn = false;

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
    println(instruct);
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
  xClickMeButton = xCenter*1/4;
  yClickMeButton = yCenter + yCenter*1/3;
  //End Population


  //Population of 'Or Me'
  xOrMe = xCenter + xCenter*1/4;
  yOrMe = yCenter - yCenter*2/3;
  OrMeWidth = xCenter/2;
  OrMeHeight = yCenter/2;
  xOrMeButton = xCenter + xCenter*1/2;
  yOrMeButton = yCenter + yCenter*1/3;
  //End Population


  //text stuff
  String[] fontList = PFont.list();
  //printArray(fontList);
  buttonText1Font = createFont("Niagara Solid", 55);
  buttonText2Font = createFont("Niagara Solid", 55);
};

void draw() {
  backgroundColor = black;
  background(backgroundColor);
  
  //Hover-over
  if (mouseX >= xClickMe && mouseX <= xClickMe + ClickMeWidth && mouseY >= yClickMe && mouseY <= yClickMe + ClickMeHeight) {
    buttonFill1 = purple;
  } else {
    buttonFill1 = red;
  };
  
  if (mouseX >= xOrMe && mouseX <= xOrMe + OrMeWidth && mouseY >= yOrMe && mouseY <= yOrMe + OrMeHeight) {
    buttonFill2 = purple;
  } else {
    buttonFill2 = red;
  };
  //End Hover-over
  
  //Button 1
  fill(buttonFill1);
  rect(xClickMe, yClickMe, ClickMeWidth, ClickMeHeight);
  textAlign(CENTER, CENTER);
  buttonText1Size = 50;
  textFont(buttonText1Font, buttonText1Size);
  fill(resetWhite);
  text(buttonText1, xClickMe, yClickMe, ClickMeWidth, ClickMeHeight);//'Click me' button text
  if (rectOn == true) rect(xClickMeButton, yClickMeButton, ClickMeWidth, ClickMeHeight);


  //Button2
  fill(buttonFill2);
  rect(xOrMe, yOrMe, OrMeWidth, OrMeHeight);
  textAlign(CENTER, CENTER);
  buttonText2Size = 50;
  textFont(buttonText2Font, buttonText2Size);
  fill(resetWhite);
  text(buttonText2, xOrMe, yOrMe, OrMeWidth, OrMeHeight);//'Or me' button text
  if (ellipseOn == true) ellipse(xOrMeButton, yOrMeButton, OrMeWidth, OrMeWidth); //Button2




  
  
};

void keyPressed() {
};


void mousePressed() {
  rectOn = false;
  ellipseOn = false;
  if (mouseX >= xClickMe && mouseX <= xClickMe + ClickMeWidth && mouseY >= yClickMe && mouseY <= yClickMe + ClickMeHeight) rectOn = true; //Button 1

  if (mouseX >= xOrMe && mouseX <= xOrMe + OrMeWidth && mouseY >= yOrMe && mouseY <= yOrMe + OrMeHeight) ellipseOn = true; //Button 1
} 
;
//End MAIN Program
