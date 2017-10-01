Bacteria [] colony;
 void setup()   
 {   
 size(512, 512);  
 colony = new Bacteria[100];
 for(int i=0; i<colony.length; i++)
  {
   colony[i] = new Bacteria();
  }  //initialize bacteria variables here   
 }   
 void draw()   
 {  
 background(75);
 for(int i = 0; i < colony.length; i++)
 {
    colony[i].walk();
   colony[i].show();
   
 }  
   //move and show the bacteria   
 }  
 class Bacteria    
{  
  int x,y,c;
  Bacteria ()
  {
   x = 275;
   y = 250;
   c = (int)(Math.random()*255)+1;
  }    
 void walk()
 {
  x = x + (int)(Math.random()*7)-3;
  y = y + (int)(Math.random()*7)-3;
  if (y < 0)
  {
    y = 500;
    if (x < 0 || x > 500)
    {
      x = 275;
    }
  }
 }
 void show()
 {
  fill(c,0,c);
  ellipse(x,y,10,10);
 }
}
