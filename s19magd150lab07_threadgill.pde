PVector v1, v2, v3;

void setup() {
  size(400,400);
  background(106,42,175);
  noLoop();
  v1 = new PVector(50, 80);
  v2 = new PVector(215, 240);
  v3 = new PVector(255, 250);
  
  int [] numbers = new int [3];
  numbers[0] = 3;
  numbers[1] = 6;
  numbers[2] = 9;
  println(numbers.length);
  println(numbers[2]);
}

void draw() {
  pushStyle();
  fill(232,63,97);
  ellipse(v1.x, v1.y, 15, 15);
  ellipse(v2.x, v2.y, 15, 15);
  v2.add(v1);
  ellipse(v2.x, v2.y, 30, 30);
  pushStyle();
  pushMatrix();//puts the current status of the coordinate system at the top of the memory area
  translate(45,100);//displaces the shape 45 units left and 100 units down
  fill(76,63,232);
  rect(0,0,100,150);
  pushStyle();
  pushMatrix();
  fill(228,250,131);
  rect(230,200,50,50);
  scale(0.5);//decreases the size of the shape by constricting vertices
  rect(230,270,50,50);
  pushStyle();
  pushMatrix();
  translate(350,350);
  rotate(PI/3.0);//rotates the shape at this angle
  fill(2,211,73);
  rect(0,0,75,100);
  popMatrix();
  pushStyle();
  fill(232,63,97);
  ellipse(v3.x, v3.y, 50, 50);
  popStyle();
  

}
