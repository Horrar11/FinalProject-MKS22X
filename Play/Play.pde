Game game;

void setup() {
  size(1240,810);
  background(245);
  frameRate(60);
  game = new Game();
  game.update();
}
void draw() {
    game.update();
    //shape(game.map.map, width / 2.0, height / 2.0);
    //game.update();
}




void mousePressed(){
    loop();
}