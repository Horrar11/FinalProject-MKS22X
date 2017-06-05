class Game{
  Map map;
  Game () {
    Map map = new Map();
    
  }
  
  void update() {
    if(mousePressed){
      shoot();
      delay(1000/8);
    }
    map.update();
  }
}