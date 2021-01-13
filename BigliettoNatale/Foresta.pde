class Foresta {
  private Albero[] alberi;
  
  Foresta(int N_ALBERI){
    
    alberi = new Albero[N_ALBERI]; 
    for(int a=0;a<N_ALBERI;a++){
      float r = random(0,width);
      alberi[a]= new Albero(r,height-height/10,width/8,height-height/1.75 );
    }
  }
  public void draw(){
    for(int b=0;b<alberi.length;b++){
      alberi[b].draw();
    }
  }
  
}
