Game game;

void setup() {
  size(810,810);
  background(155);
  game = new Game();
  game.update();
}
void draw() {
    game.update();
}




void mousePressed(){
    loop();
}