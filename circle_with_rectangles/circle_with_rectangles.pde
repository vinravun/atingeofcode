float rectRotatespeed = 50.0;
float rectAngle = 0.0;

void setup()
{
  size(600,600);
  smooth();
  noFill();
  background(0);
  rectMode(CENTER);
}

void draw()
{
  translate(width/2,height/2);
  rotate(radians(rectAngle));
  drawRect();
  rectAngle = (rectAngle + rectRotatespeed) %360.0;
  
}

void drawRect()
{
  float r = random(20,450);
  float w = random(r,500), h = random(r,500);
  stroke(random(20,90),random(100,220),random(150,250),50);
  rect(0,0,w,h);
}

