Game game = new Game();

void setup() {
  size(1280, 640);
  background(255);
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