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

void shoot(){
  noStroke();
  ellipse(mouseX, mouseY, 5, 5); 
  fill(123);
}