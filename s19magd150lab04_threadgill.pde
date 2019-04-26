float xPosition, yPosition, qPosition, wPosition;
float xSpeed, ySpeed, qSpeed, wSpeed;
float w, h, e, r;
float xMinBoundary, xMaxBoundary,
  yMinBoundary, yMaxBoundary,
  qMinBoundary, qMaxBoundary,
  wMinBoundary, wMaxBoundary;

int xDirection = 1, yDirection = 1, qDirection = 1, wDirection = 1;
int choice = 0;
int pressed = 0;
int pressedState = 0;
int value = 0;
int i;

void setup() {
  surface.setResizable(true);
  pixelDensity(displayDensity());
  size(420, 420);
  background(#44BCC1);
  noStroke();
  
  xPosition = (width/2.0);
  yPosition = (height/2.0);
  qPosition = (width/2.0 );
  wPosition = (height/2.0 );

  xSpeed = 2.0;
  ySpeed = 2.0;
  qSpeed = 2.0;
  wSpeed = 2.0;
  
  xMinBoundary = 0;
  yMinBoundary = 0;
  xMaxBoundary = 420;
  yMaxBoundary = 420;
  qMinBoundary = 0;
  wMinBoundary = 0;
  qMaxBoundary = 420;
  wMaxBoundary = 420;

  
  choice = int(0);
  
  
  w = height / 6.0;
  h = height / 10.0;
  e = height / 10.0;
  r = height / 20.0;
  
}

void draw() {
  if (pressedState == 1){
  background(68, 188, 193);
  fill(255, 235, 131);
  }else {
    background(96, 126, 173);
    fill(240, 250, 255);
  }
  if (value == 0){
    stroke(0);
    fill(#FFCF0D);
    arc(50, 290, 75, 75, 0, 360);
  }else{
    stroke(0);
    arc(350, 100, 100, 100, 0, 360);
  }
  
 
  for (int i = 0; i < 300; i = i+10) {
  line(200, i, 420, i);
}

if (mousePressed == true) {
    fill(151, 150, 240);
  } else {
    fill(127, 131, 101);
  }
    rect(200, 200, 50, 50);
  

  if (choice == 0) {
    fill(map(xPosition, 0, width, 0, 128),
      map(yPosition, 0, height, 0, 128),
      random(93, 81));
    ellipse(xPosition, yPosition, w, h);
    ellipse(qPosition, wPosition, e, r);
  }
    
  xPosition = xPosition + xSpeed * xDirection;
  yPosition = yPosition + ySpeed * yDirection;
  qPosition = qPosition + qSpeed * qDirection;
  wPosition = wPosition + wSpeed * wDirection;
  
  if (xPosition <= xMinBoundary + w / 2.0
    || xPosition >= xMaxBoundary - w / 2.0) {
    xDirection = -xDirection;
  }

  if (yPosition <= yMinBoundary + h / 2.0
    || yPosition >= yMaxBoundary - h / 2.0) {
    yDirection = -yDirection;
    }
  if (qPosition <= qMinBoundary + w / 2.0
    || qPosition >= qMaxBoundary - w / 2.0) {
    qDirection = -qDirection;
  }
  if (wPosition <= wMinBoundary + w / 2.0
    || wPosition >= wMaxBoundary - w / 2.0) {
    wDirection = -wDirection;
  }

  if (keyPressed == false) {
    fill(22, 135, 185);
  } else {
    fill(67, 155, 152);
  }
  rect(0, 300, 420, 200);
}

void keyPressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}

void mousePressed() {
  pressed = pressed + 1;
  pressedState = (pressed % 2);
}
