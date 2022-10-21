// the number of rows to draw
int numRows;
// the number of rectangles in the starting (bottom) row
int rowLength;
// the X coordinate of the first rectangle in the bottom row
int startX;
// the Y coordinate of the first rectangle in the bottom row
int startY;
// the width of each rectangle
int rectWidth;
// the height of each rectangle
int rectHeight;
// when isColour is false, all rectangles are filled in white
// otherwise a random fill colour is chosen
boolean isColour; 
  
void setup() {
  size(900, 400);
  stroke(0); // pen colour black
  numRows = 1;  // initially one row of rectangles is drawn
  rowLength = 10; // 10 rectangles in the first row
  startX = 50;
  startY = 350;
  rectWidth = 75; // each rectangle 75 pixels wide
  rectHeight = 30; // each rectangle 30 pixels wide
  isColour = false; // no colour to start with
}

void draw() {
  background(255);
  float x = startX;
  float y = startY;
  float x1 = startX;
  for(int i = 0; i < numRows; i++){
    y -= rectHeight;
    for(int j = 0; j < rowLength-i; j++){
      rect(x, y, rectWidth, rectHeight);
      x += rectWidth;
    }
    x = x1 + rectWidth/2;
    x1 += rectWidth/2;
  }
}

void mousePressed() {
  if(numRows == 10){
    numRows = 0;
    isColour = !isColour;
    if(isColour == true){
      float r = random(255);
      float g = random(255);
      float b = random(255);
      fill(r,g,b);
     } else {
      fill(255);
     };
  } else {
    numRows += 1;
  }
  
  System.out.println(numRows);
}
