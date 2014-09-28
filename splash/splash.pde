int x = 0;
int y = 0;
int r = 50;
int n = 5;
//int rs = 5;

void setup()
{
  size(650, 650);
  noStroke();
  smooth();
  noLoop();
  //randomSeed(rs);
  background(65, 165, 230);
}

void draw()
{
  fill(65, 165, 230, 10);
  rect(0, 0, width, height);
  translate(width/2, height/2);
  drawCircle(x, y, r, n);
}

void drawCircle(float x, float y, int radius, int num)
{
  float value = 150 * num /5;
  fill(10, value, 10, 200);
  ellipse(x, y, radius*2, radius*2);
  if (num > 1)
  {
    num = num - 1;
    int branches = int(random(2, 6));
    for(int i = 0; i < branches; i++)
    {
      float a = random(0, 2*PI);
      float newx = x + cos(a) * 6.0 * num;
      float newy = y + sin(a) * 6.0 * num;
      drawCircle(newx, newy, radius/2, num);
    }
  }
}
    
