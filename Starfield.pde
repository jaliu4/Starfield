Particle[] particles = new Particle[1006];

void setup()
{
  background(0);
  stroke(0,255,0);
  size(500,500);
  for (int c = 0; c < 995; c++)
  {
    particles[c] = new NormalParticle();
  }
  for (int a = 995; a < 1006; a++)
  {
    particles[a] = new JumboParticle();
  }
  particles[1] = new OddballParticle();
}
void draw()
{
 background(0);
  for (int c = 0; c < 1006; c++)
  {
    particles[c].move();
    particles[c].show();
  }
}
class NormalParticle implements Particle
{
  int Bsize;
  double Bx, By, bulletSpeed, bulletAngle;
  NormalParticle()
  {
   Bsize = 10;
   Bx = 250;
   By = 250;
   bulletSpeed = Math.random()*3 - 1;
   bulletAngle = PI * 2 * Math.random();
  }
   void move()
   {
     Bx = Bx + Math.cos(bulletAngle)*bulletSpeed;
     By = By + Math.sin(bulletAngle)*bulletSpeed;
   }
   void show()
   {
    fill((int)(Math.random()*120)+80,(int)(Math.random()*120)+80,(int)(Math.random()*120)+80);
    ellipse((float)Bx,(float)By,Bsize,Bsize);
   }  
}
interface Particle
{
  public void move();
  public void show();
}


class OddballParticle implements Particle
{
  int oddballX, oddballY, size;
  OddballParticle()
  {
    oddballX = 250;
    oddballY = 250;
    size = 50;
  }
  void show()
  {
    fill(255,0,0);
    rect(oddballX, oddballY, size, size);
  }
  void move()
  {
    oddballX = oddballX + (int)(Math.random()*11) - 5;
    oddballY = oddballY + (int)(Math.random()*11) - 5;
  }
  
}
class JumboParticle extends NormalParticle
{
  JumboParticle()
  {
    Bsize = 50;
  }
}

void mousePressed()
{
 for (int c = 0; c < 995; c++)
  {
    particles[c] = new NormalParticle();
  }
  for (int a = 995; a < 1006; a++)
  {
    particles[a] = new JumboParticle();
  }
  particles[1] = new OddballParticle();
}