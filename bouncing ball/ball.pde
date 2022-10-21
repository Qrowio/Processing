float ballX, ballY, ballWidth;
float speedX, speedY;
float holeX, holeY, holeWidth;

void setup() {
size(600, 600);
ballX = 40;
ballY = height/2;
ballWidth = 60;
initializeSpeed();
initializeHole();
}

void draw() {
background(127);
drawColourCircle(ballX, ballY, ballWidth, color(255,0,0)) ;
moveBall();
if(checkCollide(ballX, ballY, ballWidth, holeX, holeY, holeWidth)) {
     initializeHole();
   initializeSpeed();
}
bounceBall();
drawColourCircle(holeX, holeY, holeWidth, color(0));
}

void initializeSpeed() {
  speedY = random(5, 10);
  speedX = random(5, 10);
}

void drawColourCircle(float X, float Y, float wid, color fill) {
  fill(fill);
  circle(X,Y,wid);
}

void bounceBall() {
   if(ballX >= width - ballWidth/2 || ballX <= 0 + ballWidth/2){
    speedX *= -1;
  }
  if(ballY >= height - ballWidth/2 || ballY <= 0 + ballWidth/2){
    speedY *= -1;
  }
}

void moveBall() {
  ballX = constrain(speedX + ballX, 0, width);
  ballY = constrain(speedY + ballY, 0, height);
}

void keyPressed() {
  if(key == 'x') {
    speedX = random(5,10);
  }
  if(key == 'y'){
    speedY = random(5,10);
  }
}

void initializeHole() {
  holeX = random(0, width);
  holeY = random(0, height);
  holeWidth = random(100, 300);
}

float distance(float x1, float y1, float x2, float y2) {
  float one = x1 - x2;
  float two = y1 - y2;
  return sqrt((one * one) + (two * two));
}

boolean checkCollide(float x1, float y1, float d1, float x2, float y2, float d2) {
  float distance = distance(x1, y1, x2, y2);
  d1 /= 2;
  d2 /= 2;
  float radius = d1 + d2;
  if(distance <= radius){
    return true;
  } else {
    return false;
  }
}
