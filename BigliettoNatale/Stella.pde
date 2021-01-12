public class Stella{
  private float x;
  private float y;
  private float h;
  private float w;
  
  public static final color COLORE_STELLA = #ffff00;

  
  Stella(float x, float y, float w, float h ){
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
  }
  public void draw(){

     fill(COLORE_STELLA);
     
     triangle(x,y-h/3,x-w*2,y-h/1.5,(x+w/2)-w*2.5,y);
     triangle(x-w/2,y,x,y-h,x+w/2,y);
     triangle(x-w/2,y-y/3,x,y+h/3,x+w/2,y-y/3);
     
     do{
     delay(30);
     x=x+2;
     }while(x==640);
     
  }
  
}
