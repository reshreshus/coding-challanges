/*
Taken from https://github.com/CodingTrain/website/blob/master/CodingChallenges/CC_001_StarField/Processing/CC_001_StarField/Star.pde
 https://youtu.be/17WoOqgXsRM
 But star move depending on the distance from the center now.
 And Stars are added gradually (to avoid respawning stars in waves) 
 */

int starsNumber = 1500;
Star[] stars = new Star[starsNumber];


float speed;
float starsOffset;

void setup() {
  size(1920, 1080);
  starsOffset = starsNumber * 0.95;

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  float offset = abs(mouseX - width/2) + abs(mouseY - height/2);
  speed = map(offset, 0, width, 0, 80);
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < stars.length - starsOffset; i++) {
    stars[i].update();
    stars[i].show();
  }
  if (starsOffset > 0) {
    starsOffset -= 1;
  }
}
