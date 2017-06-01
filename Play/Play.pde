Game game = new Game();

void setup() {
  size(1280, 640);
  background(255);
  
}
void draw() {
    if(mousePressed){
    shoot();
    delay(1000/(int)sps);
    }
  //
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