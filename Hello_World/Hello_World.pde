int numCircles = 500;
Circle[] circles = new Circle[numCircles]; // define the array

void setup() {
  size(1439,800);
  smooth();
  noStroke();
  for (int i=0; i<numCircles; i++) {
    circles[i] = new Circle(random(width),random(height)); // fill the array with circles at random positions
  }
}


void draw() {
  background(205);
  for (int i=0; i<numCircles; i++) {
    square(100, 100, 100);
    circles[i].display(); // display all the circles
  }
}

class Circle {
  float x,y; // location
  float dim; // dimension
  color c; // color
 
  Circle(float x, float y) {
    this.x = x;
    this.y = y;
    dim = random(20,50);
    c = color(random(255));
  }

  
  void display() {
    float distance = dist(x,y,mouseX,mouseY); // distance between circle and mouse
    if (distance < 255) { // if distance is smaller than 255
      fill(255-distance);
    } else { // if distance is bigger than 255
      fill(c);
    }
    ellipse(x,y,dim,dim); // a circle at position xy
  }
}
