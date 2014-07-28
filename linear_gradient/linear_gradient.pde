float r1 = int(random(0, 255));
float g1 = int(random(0, 255));
float b1 = int(random(0, 255));

float r2 = int(random(0, 255));
float g2 = int(random(0, 255));
float b2 = int(random(0, 255));

void setup()
{
  size(500, 500);
  smooth();
}

void draw()
{
  for (int i = 0; i <= height; i = i+1)
  {
    stroke((r2 - r1)/height*i + r1, (g2 - g1)/height*i + g1, (b2- b1)/height*i + b1);
    line(0, i, width, i);
  }

/*  println(r1); 
  println(g1); 
  println(b1); 

  println(r2); 
  println(g2); 
  println(b2); */
}

void mouseClicked()
{
  r1 = int(random(0, 255));
  g1 = int(random(0, 255));
  b1 = int(random(0, 255));

  r2 = int(random(0, 255));
  g2 = int(random(0, 255));
  b2 = int(random(0, 255));
}

