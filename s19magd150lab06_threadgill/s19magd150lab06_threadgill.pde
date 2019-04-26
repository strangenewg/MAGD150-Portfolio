CloudMan myCloudMan;

void setup(){
  myCloudMan = new CloudMan();
  //creates a new object
  size(800,300);
}
void draw(){
  myCloudMan.display();
  //calls the class and displays it
  myCloudMan.move();
  //calls the class and moves it
  grass();
  raindrop();
  lightning();
}

void grass(){
  fill(75, 111, 65);
  rectMode(CORNERS);
  rect(0,300,800,250);
}

void raindrop(){
  fill(14,95,155);
  ellipse(mouseX,mouseY,5,10);

}

void lightning(){
  if(mousePressed){
  noStroke();
  fill(255);
  beginShape();
  vertex(400,120);
  vertex(410,180);
  vertex(398,150);
  vertex(407,224);
  vertex(395,212);
  vertex(400,200);
  vertex(398,120);
  endShape();
} 
}
    
