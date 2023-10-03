//Global Variables
int appWidth, appHeight;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRect2, yRect2, widthRect2, heightRect2;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit; 
PImage picBackground; 
//
void setup() {
  //print & Printin
  println("Hello World");
  println("width:"+width, "\t","Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  fullScreen();
  int appWidth = width;
  int appHeight = height;
  //
  //population
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  picBackground = loadImage("../Muhammad-ibn-al-Uthaymeen.png");
  image( picBackground, xRectBackground, yRectBackground, widthRectBackground, heightRectBackground); 
  xRectQuit = appWidth*1/5;
  yRectQuit = appHeight*1/5;
  widthRectQuit = appWidth*1/2;
  heightRectQuit = appHeight*1/2;
  
  //
  //DIVs 
  //rect(); //Image, foreground, near the top
  //rect(); //Copy and paste this for all rect()s 
  //
} //End setup 
// 

void draw() {
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
} //End draw
// 
void KeyPressed() {} //End KeyPressed 
// 
void mousePressed() {
  //when mouse is pressed
  println("Mouse X; ", mouseX, "Mouse Y; ", mouseY);
  //
  //xRect2, yRect2, widthRect2, heightRect2
  if ( mouseX>xRect2 && mouseX<xRect2+widthRect2 && mouseY>yRect2 && mouseY<yRect2+heightRect2 ) println("Button Activated");
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  println("Button Activated");
} //End mousePressed
// 
//End MAIN Program
  
  
