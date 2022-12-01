class Asteroid extends Floater{
  private double angularVelocity;
  public Asteroid(){
    corners = 4;
    xCorners = new int[]{-10, 10, 10, -10};
    yCorners = new int[]{10, 10, -10, -10};
    myColor = 255;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*10 - 5;
    myYspeed = Math.random()*10 - 5;
    myPointDirection = 0;
    angularVelocity = Math.random()*2 - 1;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public void move(){
    myPointDirection += angularVelocity;
    super.move();
  }
}
