Albero[] alberi;
Stella s1;
public static final color COLORE_SFONDO = #4169e1;
public static final int N_ALBERI = 8;

public void setup(){
  size(640,360);
  alberi = new Albero[N_ALBERI]; 
  
  for(int a=0;a<N_ALBERI;a++){
    float r = random(0,width);
    alberi[a]= new Albero(r,height-height/10,width/8,height-height/1.75 );
  }
  
  s1 = new Stella(-10,height-height/1.5,height-height/1.3,width/10);
  
  background(COLORE_SFONDO);
}
public void draw(){
  background(COLORE_SFONDO);
  for(int b=0;b<alberi.length;b++){
    alberi[b].draw();
  }
  s1.draw();
}
