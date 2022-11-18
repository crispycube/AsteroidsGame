//your variable declarations here
Spaceship rocket;
Star stars[];
boolean wKey = false;
boolean sKey = false;
boolean aKey = false;
boolean dKey = false;
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
  
  if(wKey){
    rocket.accelerate(0.5);
  }
  if(sKey){
    rocket.accelerate(-0.5);
  }
  if(aKey){
    rocket.turn(-1);
  }
  if(dKey){
    rocket.turn(1);
  } 
  fill(255);
  rocket.move();
  rocket.spin();
  rocket.show();
}  
public void keyPressed() {
  if (key == 'w') {
    wKey = true;
  } 
  if (key == 's') {
    sKey = true;
  }
  if(key == 'a'){
    aKey = true;
  }
  if(key == 'd'){
    dKey = true;
  }
  if(key == ' '){
    rocket.setXspeed(0);
    rocket.setYspeed(0);
    rocket.setAngularVelocity(0);
    rocket.teleport(Math.random()*500, Math.random()*500);
    rocket.setPointDirection(Math.random()*360);
  }
}
public void keyReleased(){
  if(key == 'w'){
    wKey = false;
  }
  if(key == 's'){
    sKey = false;
  }
  if(key == 'a'){
    aKey = false;
  }
  if(key == 'd'){
    dKey = false;
  }
}
