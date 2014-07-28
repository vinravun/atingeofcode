float x, y;
float prevX, prevY;

void setup()
{
  size(800, 600);
  smooth();
  background(0);
  
  x = width/2;
  y = height/2;
  prevX = x + random(-10, 10);
  prevY = y + random(-10, 10);
}

void draw()
{
  //stroke(20,20,20,random(200));
  
  float green = map(2*x, 0, width, 100, 200);
  float blue = map(2*y, 0, height, 100,150);
  stroke(random(20), green, blue, random(50, 100));
  strokeWeight(random(0.5, 5));
  
  line(x, y, prevX, prevY);
  line(width-x, y, width - prevX, prevY); 
  line(x, height-y, prevX, height-prevY);
  line(width-x, height-y, width-prevX, height-prevY);
  
  prevX = x;
  prevY = y;
  x += random(-10, 10);
  y += random(-10, 10);


  if (x < 0) 
  {
    noStroke();
    x = 0;
  } 
  else if (x > width) 
  {
    noStroke();
    x = width;
  }
  
  if (y < 0) 
  {
    noStroke();
    y = 0;
  } 
  else if (y > height)
  {
    noStroke();
    y = height;
  }
  
}

