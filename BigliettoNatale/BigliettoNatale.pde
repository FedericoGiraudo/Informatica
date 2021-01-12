Albero a1, a2,a3,a4;
Stella s1;
public static final color COLORE_SFONDO = #4169e1;

public void setup(){
  size(640,360);
  a1 = new Albero(width/3,height-height/10,width/8,height-height/1.75 );
  a2 = new Albero(2*width/3,height-height/10,width/8,height-height/1.75 );
  a3 = new Albero(4*width/7,height-height/10,width/8,height-height/1.5 );
  a4 = new Albero(4*width/5.5,height-height/10,width/8,height-height/1.5 );
  s1 = new Stella(width/3,height-height/1.5,height-height/1.3,width/10);
  
  
  background(COLORE_SFONDO);
}
public void draw(){
  background(COLORE_SFONDO);
  a1.draw();
  a2.draw();
  a3.draw();
  a4.draw();
  s1.draw();
  
}
