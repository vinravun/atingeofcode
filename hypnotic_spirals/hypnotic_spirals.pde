float time = PI/2; 

void setup() 
{
  size(650, 650);
  smooth();
  background(0);
  noStroke();
 // stroke(0, 150, 100, 100);
  frameRate(10);
}

void draw()
{
  background(255);
  translate(width/2, height/2); 
   
  
  pushMatrix();
  time=time+0.01; 
  for (int i = 1;i < 250; i++) {
    rotate(time); 
    map(i, 0, 255, 0, 255);
    fill(int(1000/i*2), i/3);
    ellipse(i, i, i, i);
  }
  popMatrix();
  
  rotate( -time/3);
  
}

