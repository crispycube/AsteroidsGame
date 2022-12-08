class Bullet extends Floater{
  public Bullet(Spaceship r){
    myColor = color(255);
    myCenterX = r.getX();
    myCenterY = r.getY();
    myXspeed = r.getXspeed();
    myYspeed = r.getYspeed();
    myPointDirection = r.getPointDirection();
    accelerate(0.5);
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
