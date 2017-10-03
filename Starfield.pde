int enemyX;
int enemyY;
NormalParticle [] bullets;
void setup()
{
	size(500,500);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	int bulletColorR, bulletColorG, bulletColorB;
  double x, y, bulletSpeed, bulletDir;
  NormalParticle()
  {
   bulletColorR = (int)(Math.random()*120)+80;
   bulletColorG = (int)(Math.random()*120)+80;
   bulletColorB = (int)(Math.random()*120)+80;
   x = enemyX;
   y = enemyY;
   
  }
   
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}