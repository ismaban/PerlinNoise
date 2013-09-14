float xInc = 0.00;
float yInc = 10.00;
float r;
float x,y;
void setup(){
  background(255);
  size(400,400);
  smooth();
  fill(255,255,0,20);
}

void draw(){
  //background(255);
  x = noise(xInc);
  x = map(x, 0,1,0,width);
  //x = random(0,width);
  xInc+=0.01;
  
  y = noise(yInc);
  y = map(y, 0,1,0,height);
  //y = random(0,height);
  yInc+=0.01;
  //s = random(1,250);
  ellipse(x, y, 10, 10);
  
  //fill(255,1);
  //rect(0,0,width,height);
  if(frameCount == 2013){
    saveFrame("img7-####.png");
  }
  println(frameCount);
  
}
