
int rad = 2;
float diam = 2*rad;
float spacing = 4*diam;
float cutoff = 100.0;
float bul_rad = 80.0;

void setup() 
{
  size(500, 500);
  smooth();
  noStroke();
  noLoop();
}

void draw() 
{
  grid(10, 10);
}

void grid( int xPos, int yPos) 
{
  background(50,100,100);
  int mx = mouseX;
  int my = mouseY;
  fill(255, 255, 255);

  for (int i = xPos; i < width; i += spacing) 
  {
    for (int j = yPos; j < height; j += spacing) 
    {
      float distnce = dist(mx, my, i, j);
      if (distnce < bul_rad)
      {     
        float new_diam = map(distnce, 0, cutoff, 18, 0);
        ellipse(i, j, new_diam, new_diam);
      }        
      ellipse(i, j, diam, diam);
    }
  }
}

void mouseMoved()
{
  redraw();
}

