 Walker[] bob; 
void setup() 
{
  size(500,500);
  background(128,128,128);
  bob = new Walker[400];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Walker();
  }
}
void draw()
{
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].walk();
  }
}
class Walker
{
  color myC;
  int startX,startY,endX,endY,endXX,endYY,startXX,startYY;
  Walker()
  {
    //myC = color(#004369);
    startX = endX = (int)(Math.random()*height);
    startY = endY = (int)(Math.random()*width);
    
    startXX = endXX = (int)(Math.random()*height);
    startYY = endYY = (int)(Math.random()*width);
  }
  void walk()
  {
    endX = startX + (int)(Math.random()*6)-1;
    endY = startY + (int)(Math.random()*6)-1;
    startX = endX;
    startY = endY;
  
    endXX = startXX + (int)(Math.random()*6)-1;
    endYY = startYY + (int)(Math.random()*6)-1;
    startXX = endXX;
    startYY = endYY;
 
  }
  void show()
  {
    strokeWeight(1.5);
    //stroke(#6CD156);
    stroke(#01949A);
    line(startX,startY,endX,endY);
    stroke(#004369);
     line(startXX,startYY,endXX,endYY);
  }
}
