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

  void shoot(){
    //noStroke();
    //ellipse(mouseX, mouseY, 5, 5); 
    //fill(123);
    
    Bullet a  = new Bullet(5, atan(( mouseX - width/2)/( mouseY - height/2)), width/2, height/2, 15, 15);
    a.placeOn(map);
  }
}