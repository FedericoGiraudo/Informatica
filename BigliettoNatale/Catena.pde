class Catena{
  private Luce[] luci;
  
  Catena(int N_LUCI){
    
    luci= new Luce[N_LUCI];
    for(int i=0;i<N_LUCI;i++){
      float rw = random(0,width);
      float rh = random(0,height);
      luci[i]= new Luce(rw,rh/2,10,true); 
    }
  }
  
  public void draw(){
    for(int b=0;b<luci.length;b++){
      luci[b].draw();
    }
  }
  
  public void mousePressed(float mouseX,float mouseY){
    for(int w=0;w<luci.length;w++){
      luci[w].premuto(mouseX,mouseY);
    }
  }
}
