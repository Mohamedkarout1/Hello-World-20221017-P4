//Global Variables
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, purple=#FA00F6, yellow=#F8FC64;
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096;
float thick, thin;
Boolean grayScale=false, randomColour=false, blackBackground=false, nightMode=false;
//
void setup() {
  //Declare Display Geometry: square, landscape, portrait
  size(700, 400); //Use size for debugging
  //fullScreen(); //Use fullScreen for easy deployment
  appWidth = width;
  appHeight = height;
  //
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("STOP, is broken");
    }
  }
  //
  //If ORIENTATION is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  //Population
  centerWidth = appWidth * 1/2;
  centerHeight = appHeight * 1/2;
  xStart = centerWidth - ( appWidth * 1/4 ) ;
  yStart = centerHeight - ( appHeight * 1/4 ) ;;
  widthRect = appWidth * 1/2;
  heightRect = appHeight * 1/2;
  thick = appWidth * 1/70;
  thin =  appWidth * 1/140;
} //End setup
//
void draw() {
  if ( grayScale == true ) background(225); //Gray Scale 0-255
  //random(a, b)
  if ( randomColour == true ) background( color( random(0, 255), random(255), random(255) ) ); //color(r,g,b), Casting 
  //Night Mode
  
  //
  strokeWeight(thick); //noStroke()
  //Night Mode Decision
  if ( nightMode == true )
  {
    if ( blackBackground == true ) background(black);
    stroke(yellowNightMode);
    fill(purpleNightMode);
  } else
  {
    stroke(yellow);
    fill(purple);
  }
  rect(xStart, yStart, widthRect, heightRect);
  // Reset default
  fill(white);
  stroke(black);
  strokeWeight(1);
} //End draw
//
void keyPressed() {
  grayScale = false;
  randomColour = false;
  blackBackground = false;
  if ( key=='A' || key=='a' ) grayScale = true;
  if ( key=='S' || key=='s' ) randomColour = true;
  if ( key=='W' || key=='w' ) blackBackground = true;
} //End keyPressed
//
void mousePressed() {
  if ( mouseButton == LEFT ) nightMode = true;
  if ( mouseButton == RIGHT ) nightMode = false;
} //End mousePressed
//
// End Main Program
