//your variable declarations here
Spaceship rocket;
Star stars[];
ArrayList<Asteroid> asteroids;
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
  asteroids = new ArrayList<Asteroid>();
  for(int i = 0; i < 20; i++){
    asteroids.add(new Asteroid());
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
    rocket.turn(-0.5);
  }
  if(dKey){
    rocket.turn(0.5);
  } 
  fill(255);
  rocket.move();
  rocket.spin();
  rocket.show();
  for(int i = 0; i < asteroids.size(); i++){
    Asteroid temp = asteroids.get(i);
    temp.move();
    temp.show();
    if(dist((float)rocket.getX(), (float)rocket.getY(), (float)temp.getX(), (float)temp.getY()) < 20){
      asteroids.remove(i);
      i--;
    }
  }
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
