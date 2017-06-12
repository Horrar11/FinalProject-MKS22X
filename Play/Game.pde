class Game{
  Map map;
  Char_ player;
  Game () {
    map = new Map();
    player = new Char_((int) random(0,3));
    update();
  }
  
  void update() {
    
    /*if(mousePressed){
      shoot();
      delay(1000/8);
    }*/                 ////for PROCESSOR
    map.update(player.SPD * 5.6 / 75 + 4);
    player.update();
  }

  
}