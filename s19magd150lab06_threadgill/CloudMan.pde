class CloudMan{
  int x, y, offset1, offset2, offset3, speed;
  
  CloudMan(){
   //the constructor which creates the instance of the object
  x = 0;
  y = 80;
  offset1 = 15;
  offset2 = 20;
  offset3 = 45;
  speed = 1;
}
  
  void display(){
  background(211);
  noStroke();  
  fill(100);
  ellipse(x, y, 130, 90);
  fill(180);
  ellipse(x+offset1, y+offset2, 200, 40);
  ellipse(x-offset1, y-offset2, 220, 25);
  fill(100);
  ellipse(x-offset3, y-offset3, 100, 14);
}
  
  void move(){
   x = speed + x;
    if ((x>width) || (x<0)) {
      speed = speed * -1;
    }
}
}
