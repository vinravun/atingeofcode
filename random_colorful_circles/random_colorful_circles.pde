
//random_circles

void setup()
{
  size(600, 600);
  smooth();
  background(0);
  frameRate(25);
  strokeWeight(3);
  noFill();
}

void draw()
{
  float rad = random(50, 200);
  float r = random(255);
  float g = random(255);
  float b = random(255);
  
  stroke(r, g, b);
  ellipse(random(0, height), random(0, height), rad, rad);
  
  noStroke();
  fill(0, 0, 0, 50);
  rect(0, 0, width, height);
  
}
  

