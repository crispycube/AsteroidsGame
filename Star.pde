class Star //note that this class does NOT extend Floater
{
  color myColor;
  double myX, myY;
  
  public Star(){
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = Math.random()*500;
    myY = Math.random()*500;
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}
