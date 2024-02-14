public void setup()
{
  //empty
  size(500,500);
  background(0);
}
public void draw()
{
  //call sierpinski
  sierpinski(0,500,500);
}
public void mouseDragged()
{
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
  fill(255);
  triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else
  {
  //3 calls to sierpinski
  sierpinski(x,y,len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y-len/2, len/2);
  }
}
