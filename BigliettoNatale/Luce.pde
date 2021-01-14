class Luce{
  
  private float x;
  private float y;
  private float r;
  private boolean accesa;
  
  public static final color LUCE_ON = #FFFF00;
  public static final color LUCE_OFF = #C0C0C0;
 
  Luce(float x,float y,float r,boolean accesa){
    this.x = x;
    this.y = y;
    this.r = r;
    this.accesa = accesa;
  }
  
  public void draw(){
    if(accesa)
      fill(LUCE_ON);
    else
      fill(LUCE_OFF);
    
    circle(x,y,2*r); 
  }
  
  boolean premuto(float mx,float my){
    float dx = mx-x;
    float dy = my-y;
    boolean ris = false;
    
    if(dx*dx+dy*dy<r*r){
      accesa= !accesa;
      ris = true;
    }
    return ris;
  }
}
