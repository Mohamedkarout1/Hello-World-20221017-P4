boolean nightmode=false; 
ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int speedinv = 4;
int scl = 10;
int hx=1,hy = 1,apx = int(int(random(scl,width-scl))/scl), apy = int(int(random(scl,height-scl))/scl), dir = 1,start = 0;
int[] dx = {0,1,0,-1}; 
int[] dy = {-1,0,1,0};
color orange = #FFA703, orangeNightMode = #FFA700;
boolean nightMode = false;
void setup() {
  size(400,400);
  background(250);
  stroke(250);
  strokeWeight(3);
  for(int i = 0 ; i < width ; i+=scl) {line(0+i,0,0+i,height);};
  for(int i = 0 ; i < height ; i+=scl) {line(0,0+i,width,0+i);};
  x.add(1);
  y.add(1);
}

void draw() {
  if ( nightmode = true ) 
{
  fill(orangeNightMode);
} else 
{
  fill(orange);
}
  background(250);
  stroke(250);
  for(int i = 0 ; i < width ; i+=scl) {line(0+i,0,0+i,height);};
  for(int i = 0 ; i < height ; i+=scl) {line(0,0+i,width,0+i);};
  stroke(0);
  strokeWeight(14);
  line(0,0,width,0);
  line(width,0,width,height);
  line(width,height,0,height);
  line(0,height,0,0);
  strokeWeight(3);
  for(int i = 0 ; i < x.size() ; i++) {
    fill(orange);
    rect(x.get(i)*scl, y.get(i)*scl, scl,scl);
    fill(255,0,0);
    rect(apx*scl,apy*scl,scl,scl);
  }
  
  if (frameCount%speedinv==0) {
  if ((dir == 0) && (hy > 0)) {hy -= 1;};
  if ((dir == 1) && (hx<width/scl-1)) {hx += 1;};
  if ((dir == 2) && (hy<height/scl-1)) {hy += 1;};
  if ((dir == 3) && (hx > 0)) {hx -= 1;};
  x.add(0,x.get(0)+dx[dir]);
  y.add(0,y.get(0)+dy[dir]);
  for(int i=1;i<x.size();i++) {if(x.get(0)==x.get(i)&&y.get(0)==y.get(i)) {exit();}};
  
  
  
  if (hx == apx && hy == apy) {
  apx = int(int(random(scl,width-scl))/scl);
  apy = int(int(random(scl,height-scl))/scl);
  } else {
    x.remove(x.size()-1);
    y.remove(y.size()-1);
  }
  
 } if(hx - 1 == -1) {exit();};if(hy - 1 == -1) {exit();};if(hx - (width/scl-2) > 0) {exit();};if(hy - (height/scl-2) > 0) {exit();};
} void keyPressed() {
  if ( key == 'N' || key == 'n' ) nightMode = true;
  if ((key == 'w') && (dir != 2) && (hy > 0)) {dir = 0;};if ((key == 'd') && (dir != 3) && (hx<width/scl-1)) {dir = 1;};if ((key == 's') && (dir != 0) && (hy<height/scl-1)) {dir = 2;};if ((key == 'a') && (dir != 1) && (hx > 0)) {dir = 3;};
}
