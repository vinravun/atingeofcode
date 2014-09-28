boolean start = false;

float padWidth = 100, padHeight = 10;

int ballRadius = 15;
float ballX = random(ballRadius, width), ballY = 100;
float speedX = random(4, 6), speedY = random(4, 7);

Paddle player;

void setup()
{
  size(500, 300);
  noStroke();
  smooth();
  background(0);
  rectMode(CENTER);
}

void draw()
{
  fill(160, 195, 130, 80);
  rect(width/2, height/2, width, height);

  player = new Paddle(mouseX, height - 20, padWidth, padHeight, 255);
  player.display();

  drawBall(ballX, ballY, ballRadius);

  if (start)
  {
    if (ballX >= width - ballRadius || ballX < 0)
    {
      speedX = -1 * speedX;
      ballX += speedX;
    }

    if (ballY < 0)
    {
      speedY = -1*speedY;
      ballY += speedY;
    }

    if (ballX > mouseX - padWidth/2 - padHeight/2 && ballX < mouseX + padWidth/2 + padHeight/2 && ballY > height - 20 - padHeight && ballY < height - 20)
    {
      speedY = -1*speedY;
      ballY += speedY;
    }

    if (ballY > height)
    {
      fill(250, 50, 20);
      rect(width/2, height/2, width, height);
      start = false;
      ballX = random(200, 400);
      ballY = 100;
      speedX = random(3, 6);
      speedY = random(3, 6);
    }

    ballX += speedX;
    ballY += speedY;
    speedX += random(-0.3, 0.3);
    speedY += random(-0.3, 0.3);
  }
}

class Paddle
{
  float x, y, w, h, c;
  float speed = 5.0;

  Paddle(float tempX, float tempY, float tempW, float tempH, int pColor)
  {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    c = pColor;
  }

  void display()
  {
    fill(c);
    rect(x, y, w, h);
    ellipse(x-w/2, y, h, h); 
    ellipse(x+w/2, y, h, h);
  }
}

void drawBall(float x, float y, int r)
{
  fill(200, 255, 40);
  ellipse(x, y, r, r-2);
}

void mousePressed() 
{
  start = !start;
}

