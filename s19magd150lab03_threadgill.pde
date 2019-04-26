

float xspeed = 5;
float circleX;
float circleY;
float circleZ;
void setup() {
  println(63 + 17);
  println(78 % 2);
  println("max:" + max(-8, 3));
  println("min:" + min(65, -70));
  println("ellipse distance:" + dist(circleX, height/2, 32, 32));
  size(640,360);
  circleX = 0;
  circleY = 0;
  circleZ = 0;
}

void draw() {
  background(#2B87CB);
  fill(255);
  stroke(0);
  ellipse(circleX,height/2, 32, 32);
  pushStyle();
  fill(#55FF61);
  ellipse(circleY,height/3, 32, 32);
  pushStyle();
  fill(#7355FF);
  ellipse(circleZ,height/6, 32, 32);
  popStyle();
  circleX = circleX + random(xspeed);
  circleY = circleY + random(xspeed);
  circleZ = circleZ + random(xspeed);
  
  if (circleX > width || circleX < 0) {
    xspeed = xspeed * -1;
    

  }
  ellipse(mouseX + 100, 100, mouseX, 50);
  ellipse(mouseY, 50, mouseY + 100, 100);
}
