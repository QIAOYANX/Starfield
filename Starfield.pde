int r = 270;
int g = 240;
int b = 240;
Particle[] Many;
Particle slow = new Particle();
class Particle
{
  double myX, myY, myAngle;
  int myColor, mySpeed, myOpacity;
  Particle()
  {
    myOpacity = (int)(Math.random()*250);
    myX = 150;
    myY = 150;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void walk()
  {
    mySpeed = 10;
    myAngle = 2.03;
    myX = myX + Math.sin(Math.random()*5);
    myY = myY + Math.cos(Math.random()*5);
  }
   void jump()
   {
     myX = myX - Math.sin(Math.random()*5);
     myY = myY - Math.cos(Math.random()*5);
   }
  void show()
  {
    //for(int r = 270; r < 300; r++);
    fill(myColor,myOpacity);
    stroke(#F0D9D0);
    ellipse((float)myX,(float)myY,10,10);
    ellipse((float)myX+13,(float)myY,10,10);
    rect((float)myX,(float)myY,20.0,20.0);
    //ellipse(200,295,80,65);
  }
}
void setup()
{
  size(300,300);
  background(0);
  Many = new Particle[42];
  for(int i =0; i<40; i++){
  Many[i]= new Particle();
  for(int k = 38; k< 42; k++){
  Many[k] = new oddBallParticle();
  }
  }
}
void draw()
{
  clear();
  slow.show();
  slow.walk();
  slow.jump();
  for(int i =0; i<Many.length; i++){
  Many[i].walk();
  Many[i].show();
  Many[i].jump();
}
}
class oddBallParticle extends Particle{
  oddBallParticle(){
    myX = (int)(Math.random()*100)+200;
    myX = (int)(Math.random()*10)+200; 
    myOpacity = (int)(Math.random()*10);
    //rect((float)myX,(float)myY,50.0,50.0);
}
}


