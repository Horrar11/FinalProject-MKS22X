class Play {
  Game game = new Game();

  void setup() {
    size(1280, 640);
    background(255);
  
  }
  void draw() {
  if(mousePressed){
    /*shoot();
    delay(1000/(int)sps);
    //ellipse(mouseX, mouseY, 3, 80); 
  //x = x + 1;*/}
  
  
    game.update();
  }
}