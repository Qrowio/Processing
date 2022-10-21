boolean stop;

void setup() {
  size(200,200); 
  stop = true;
}

void draw() {
  String text;
  if(stop) {
    fill(255,0,0);
    text = "stop";
    rect(20, 20, 160, 160);
    textAlign(CENTER);
    fill(0);
    textSize(30);
    text(text, 100, 100);
  } else {
    fill(0,255,0);
    text = "walk";
    rect(20, 20, 160, 160);
    textAlign(CENTER);
    fill(0);
    textSize(30);
    text(text, 100, 100);
  }
}

void mousePressed() {
  stop = !stop;
}
