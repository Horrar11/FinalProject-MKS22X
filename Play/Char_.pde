class Char_{
  int HP, MP, ATT, DEF, SPD, DEX, VIT, WIS;
  float X, Y, mX, mY;
  void shoot(){
    //noStroke();
    //ellipse(mouseX, mouseY, 5, 5); 
    //fill(123);
    Bullet a  = new Bullet(5, , width/2, height/2, 15, 15);
    a.placeOnMap();
  }
}