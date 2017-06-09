class Game{
  Map map;
  Game () {
    map = new Map();
    update();
  }
  
  void update() {
    
    if(mousePressed){
      shoot();
      delay(1000/8);
    }
    map.update();
  }

  
}