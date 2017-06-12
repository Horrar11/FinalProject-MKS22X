class Char_{
  PImage sprite;
  int HP, MHP, MP, MMP, ATT, DEF, SPD, DEX, VIT, WIS, LVL, pick;
  float X, Y, mX, mY;
  String Name;
  
  Char_ (int name) {
    if (name == 0) {Name = "PRIEST"; pick = 0;
      HP = 100;
      MHP = 100;
      MP = 100;
      MMP = 100;
      ATT = 12;
      DEF = 0;
      SPD = 12;
      DEX = 12;
      VIT = 10;
      WIS = 15;
      LVL = 1;
    }
    if (name == 1) {Name = "ARCHER"; pick = 1;
      HP = 130;
      MHP = 130;
      MP = 100;
      MMP = 100;
      ATT = 12;
      DEF = 0;
      SPD = 12;
      DEX = 12;
      VIT = 12;
      WIS = 10;
      LVL = 1;
    }
    if (name == 2) {Name = "WARRIOR"; pick = 2;
      HP = 200;
      MHP = 200;
      MP = 100;
      MMP = 100;
      ATT = 15;
      DEF = 0;
      SPD = 7;
      DEX = 10;
      VIT = 10;
      WIS = 10;
      LVL = 1;
    }
    if (name == 3) {Name = "ROGUE"; pick = 3;
      HP = 150;
      MHP = 150;
      MP = 100;
      MMP = 100;
      ATT = 10;
      DEF = 0;
      SPD = 15;
      DEX = 15;
      VIT = 15;
      WIS = 10;
      LVL = 1;
    }
  }
  
  void lvlUP() {
   if (pick == 0) {
     HP += (int) random(20, 30);
     MHP += (int) random(20, 30);
     MP += (int) random(5, 15);
     MMP += (int) random(5, 15);
     ATT += (int) random(0, 2);
     SPD += (int) random(1, 2);
     DEX += (int) random(0, 2);
     VIT += (int) random(0, 1);
     WIS += (int) random(1, 2);
     LVL++;
   }
  
  if (pick == 1) {
     HP += (int) random(20, 30);
     MHP += (int) random(20, 30);
     MP += (int) random(2, 8);
     MMP += (int) random(2, 8);
     ATT += (int) random(1, 2);
     SPD += (int) random(0, 2);
     DEX += (int) random(0, 2);
     VIT += (int) random(0, 1);
     WIS += (int) random(0, 2);
     LVL++;
   }
   
   if (pick == 2) {
     HP += (int) random(20, 30);
     MHP += (int) random(20, 30);
     MP += (int) random(2, 8);
     MMP += (int) random(2, 8);
     ATT += (int) random(1, 2);
     SPD += (int) random(0, 2);
     DEX += (int) random(0, 2);
     VIT += (int) random(1, 2);
     WIS += (int) random(0, 2);
     LVL++;
   }
   
   if (pick == 3) {
     HP += (int) random(20, 30);
     MHP += (int) random(20, 30);
     MP += (int) random(2, 8);
     MMP += (int) random(2, 8);
     ATT += (int) random(0, 2);
     SPD += (int) random(1, 2);
     DEX += (int) random(1, 2);
     VIT += (int) random(0, 1);
     WIS += (int) random(0, 2);
     LVL++;
   }
  
  }
  
  void update() {
    if (HP < 0) {
      die();
    }
    else{
      if (HP < MHP) {
        HP += (1 + .12 * VIT)/ 60;
      }
      if (MP < MMP) {
        MP += (1 + .6 * VIT)/60;
      }
    }
  }
  
  void shoot(){
    //noStroke();
    //ellipse(mouseX, mouseY, 5, 5); 
    //fill(123);
    Bullet a  = new Bullet(5, atan2(mouseX, mouseY), width/2, height/2, 15, 15);
    a.placeOnMap();
  }
  
  void die() {
    exit();
  
  }
}