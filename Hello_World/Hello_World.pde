//Global Variables
int appWidth, appHeight;
float centerX, centerY, xStart, yStart, widthRect, heightRect;
color balckNightModes=#000000; //Hexidecimal
float thin, normal, thick=5;
//
void setup() {
  //Declaring Display Geometry: landscape, square, portrait
  size(700, 400); //Able to deploy with fullScreen();
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //Concatenation: , or + (i.e space)
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //
  if ( appWidth < appHeight ) { //Declaring Landscape & square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }
  //Population
  centerX = width * 1/2;
  centerY = height * 1/2;
  xStart = centerX - ( appWidth * 1/4 );
  yStart  = centerY - ( height * 1/4 );
  widthRect = width * 1/2;
  heightRect = height * 1/2;
  thin = appWidth / appWidth; //1
  normal = appWidth  * 1/70;
  thick = appWidth  * 1/35;
} //End setup
//
void draw() {
  // New Background Function "covers" old gray scale background()
  // Night Mode means background cannot have blue // change randome for night mode, hard code "0"
  background(100); //Gray Scale (0-255) & Blue Issue for night mode
  //
  //Casting Reminder
  background ( color( 55, 0 , 0 )); // Color without blue
  //
  circle(224, 184, 220); 
  circle(90, 184, 220); 
  triangle(110, 300, 232, 80, 344, 300);
  strokeWeight(1); //default reset 
  //
  strokeWeight( thick );
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
