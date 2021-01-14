Foresta f1;
Stella s1;
Catena l1;

public static final color COLORE_SFONDO = #4169e1;
public static final int N_ALBERI = 8;
public static final int N_LUCI = 20;

public void setup(){
  size(640,360);
  
  f1 = new Foresta(N_ALBERI);
  s1 = new Stella(-10,height-height/1.5,height-height/1.3,width/10);
  l1 = new Catena(N_LUCI);
  
  background(COLORE_SFONDO);
}
public void draw(){
  background(COLORE_SFONDO);
  
  f1.draw();
  s1.draw();
  l1.draw();
  
}
public void mousePressed(){
  l1.mousePressed(mouseX, mouseY);
}
