//your variable declarations here
Spaceship rocket;
Star stars[];
ArrayList<Asteroid> asteroids;
ArrayList<Bullet> bullets;
boolean wKey = false;
boolean sKey = false;
boolean aKey = false;
boolean dKey = false;
boolean mouse = false;
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
  for(int i = 0; i < 500; i++){
    asteroids.add(new Asteroid());
  }
  bullets = new ArrayList<Bullet>();
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).move();
    bullets.get(i).show();
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
  if(mouse){
    bullets.add(new Bullet(rocket));
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
      rocket.hit();
    }
  }
  for(int i = 0; i < asteroids.size(); i++){
     for(int j = 0; j < bullets.size(); j++){
       boolean destroy = false;
       if(dist((float)bullets.get(j).getX(), (float)bullets.get(j).getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY()) < 10){
         bullets.remove(j);
         j--;
         destroy = true;
      }
      if(destroy){
        asteroids.remove(i);
        destroy = false;
        break;
      }
    }
  }
  fill(#32CD32);
  noStroke();
  textSize(20);
  text("Health: " +rocket.getHP(), 20, 20);
  if(rocket.getHP() < 1){
    background(0);
    fill(#FF0000);
    textSize(50);
    text("GAME OVER", 110, 250);
    if(mousePressed){
      rocket.setHP(20);
      rocket.setXspeed(0);
      rocket.setYspeed(0);
      rocket.setX(250);
      rocket.setY(250);
      rocket.setPointDirection(0.0);
      rocket.setAngularVelocity(0.0);
      for(int i = asteroids.size() - 1; i >= 0; i--){
        asteroids.remove(i);
      }
      for(int i = bullets.size() - 1; i >= 0; i--){
        bullets.remove(i);
      }
      for(int i = 0; i < 500; i++){
        asteroids.add(new Asteroid());
      }
    }
  }
}

public void mousePressed(){
  mouse = true;
}
public void mouseReleased(){
  mouse = false;
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
