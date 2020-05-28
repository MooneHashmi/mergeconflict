float posy;
boolean reverse;

void setup() {
  size(1280,720);
  posy = 0;
  reverse = false;
}
void draw() {
  background(240, 240, 240);
  fill(255, 147, 79);
  rect(0, posy, width/14.22, height/8);

  if (posy >= height - height/8) {
    reverse = true;
  } 
  if (posy <= 0) {
    reverse = false;
  }

  if (frameCount % 60 == 0) {
    if (reverse == true) {
      posy = (posy - ((float)height/8));
    } else {
      posy = (posy + ((float)height/8));
    }
  }
}
void keyPressed() {
  if (key == ' ') {
    //If Looping
    if (looping) noLoop();
    //If Not Looping
    else loop();
  }
}
