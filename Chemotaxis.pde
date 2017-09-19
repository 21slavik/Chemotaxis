Bacteria [] colony;
 void setup()   
 {   
 size(512, 512);  
 colony = new Walker[30];
 for(int i=0; i<colony.Length; i++)
  {
 	colony[i] = new Walker();
  }	//initialize bacteria variables here   
 }   
 void draw()   
 {  
 background(0);
 for(int i = 0; i < colony.Length; i++)
 {
 	colony[i].show();
 	colony[i].walk();
 }  
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	//lots of java!   
 }    