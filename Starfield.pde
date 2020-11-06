class Particle {
  double myX;
  double myY;
  color myColor;
  double mySpeed;
  double myAngle;
  
  Particle() {
    myX = (Math.random() * 20) + 390;
    myY = (Math.random() * 20) + 290;
    myColor = color((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
    mySpeed = Math.random() * 10;
    myAngle = Math.random()*2*Math.PI;
   }
  
  void move() { 
    
      myX += Math.cos(myAngle) * mySpeed;
      myY += Math.sin(myAngle) * mySpeed;
  }
  
  void show() {
    fill(myColor);
    ellipse((float)myX,(float)myY,5,5);
  }
}

class Planet extends Particle {
int mySize = 100;
Planet() {
  myX = 400;
  myY = 300; 
}

void move() {
  int randomizer = (int)(Math.random() * 4);
  
  if(randomizer == 0) {
     myX ++;
  }
  if(randomizer == 1) {
     myY ++;
  }
  if(randomizer == 2) {
     myX --;
  }
  if(randomizer == 3) {
     myY --;
  }
}
  
void show() {
  mySize ++;
  fill(myColor);
  ellipse((float)myX,(float)myY, mySize, mySize);
}
  
}

Particle[] Particles = new Particle[500];

void setup() {
  size(800,600);
  background(0,0,0);
     for(int i = 0; i < 499; i++) {
      Particles[i] = new Particle();
      Particles[i].move();
      Particles[i].show();
    }
   Particles[499] = new Planet();
   Particles[499].move();
   Particles[499].show();
 }
  
void draw() {
  background(0,0,0);
  for(int i = 0; i < 499; i++) {
      Particles[i].move();
      Particles[i].show();
  } 
   Particles[499].move();
   Particles[499].show();
}



