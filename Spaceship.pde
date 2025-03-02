class Spaceship extends Floater  {
  private double angularVelocity;
  private int hp;
  public Spaceship(){
    hp = 20;
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color(255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0.0;
    myPointDirection = 0.0;
    angularVelocity = 0.0;
  }
  public int getHP(){
    return hp;
  }
  public void setHP(int n){
    hp = n;
  }
  public void hit(){
    hp--;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  public double getAngularVelocity(){
    return angularVelocity;
  }
  public void setX(int x){
    myCenterX = x;
  }
  public void setY(int y){
    myCenterY = y;
  }
  public void setXspeed(double s){
    myXspeed = s;
  }
  public void setYspeed(double s){
    myYspeed = s;
  }
  public void setAngularVelocity(double v){
    angularVelocity = v;
  }
  public void setPointDirection(double a){
    myPointDirection = a;
  }
  public void teleport(double x, double y){
    myCenterX = x;
    myCenterY = y;
  }
  public void turn(double a){
    angularVelocity += a;
  }
  public void spin(){
    myPointDirection += angularVelocity;
  }
}
