//your variable declarations here
Spaceship rocket;
Star stars[];
public void setup() 
{
  background(0);
  size(500, 500);
  rocket = new Spaceship();
  stars = new Star[20];
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  fill(255);
  rocket.move();
  rocket.show();
  rocket.spin();
}  
public void keyPressed() {
  if (key == 'w') {
    rocket.accelerate(0.5);
  } else if (key == 's') {
    rocket.accelerate(-0.5);
  }
  if(key == 'a'){
    rocket.turn(-1);
  } else if(key == 'd'){
    rocket.turn(1);
  }
  if(key == ' '){
    rocket.setXspeed(0);
    rocket.setYspeed(0);
    rocket.setAngularVelocity(0);
    rocket.teleport(Math.random()*500, Math.random()*500);
    rocket.setPointDirection(Math.random()*360);
  }
}
