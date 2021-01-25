class ListaQuadretti{
  private Quadretto[] quadretti;
  private Griglia griglia;
  private int quanti;
  public ListaQuadretti(Griglia griglia){
    this.griglia=griglia;
    this.quanti=0;
    quadretti = new Quadretto[griglia.getColonne()*griglia.getRighe()];
  }
  
  public void disegna(){
    for (int i=0; i<quanti; i++){
      griglia.disegnaQuadretto(quadretti[i]);
    }
  }
  
  public void aggiungiQuadretto(Quadretto q){
    if (q==null)
    return;
    int pos = this.ricercaQuadretto(q);
    if (pos==-1){
      System.out.println("Aggiunto " + q.toString());
      quadretti[quanti++] = q;     
    } else {
      System.out.println("Rimosso " + q.toString());
      this.rimuoviQuadretto(pos);
    }
  }
  
  public int ricercaQuadretto(Quadretto q){
     int i=0;
     int pos = -1;
     while(i<quanti && pos==-1){
       if (quadretti[i].equals(q)){
         pos = i;
       }
       i++;
     }
     return pos;
  }
  
  public void rimuoviQuadretto(int pos){
    for (int k=pos; k < quanti-1; k++){
      quadretti[k] = quadretti[k+1];
    }
    quanti--;
  }
}
