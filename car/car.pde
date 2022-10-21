int vX;
int vY;
float randomFloat = random(255);
float wheel = random(70, 100);

void setup()
{
  size(1400,800);
}

void draw()
{
  vX = mouseX;
  vY = mouseY;
  background(123,146,238);
  
  // Main body of the car
  fill(randomFloat);
  rect(vX,vY,750,150,20);
  rect(vX+280,vY-150,20,150,20,0,0,0);
  rect(vX+300,vY-150,300,20);
  rect(vX+600,vY-150,20,150,0,20,0,0);

  // Headlights
  fill(251,255,149);
  noStroke();
  rect(vX+723,vY,30,50,0,20,0,25);
  rect(vX,vY,30,50,20,0,25,0);
  
  // Car Exhaust
  fill(219,215,222);
  rect(vX-50,vY+100,50,20);
  
  // Car Wheels
  fill(219,215,222);
  stroke(129,121,121);
  ellipse(vX+80,vY+160,wheel,wheel);
  ellipse(vX+660,vY+160,wheel,wheel);
}
