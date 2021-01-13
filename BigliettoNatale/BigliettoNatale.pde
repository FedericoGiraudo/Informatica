Foresta f1;
Stella s1;
public static final color COLORE_SFONDO = #4169e1;
public static final int N_ALBERI = 8;

public void setup(){
  size(640,360);
  
  f1 = new Foresta(N_ALBERI);
  s1 = new Stella(-10,height-height/1.5,height-height/1.3,width/10);
  
  background(COLORE_SFONDO);
}
public void draw(){
  background(COLORE_SFONDO);
  
  f1.draw();
  s1.draw();
}
