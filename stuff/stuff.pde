int value = 0;
int x = 0;
int dex = 75;
float sps = 1.5 + dex * 6.5 / 75;



void draw() {
/*  if(mousePressed){
    shoot();
    delay(1000/(int)sps);
    //ellipse(mouseX, mouseY, 3, 80); 
  //x = x + 1;
  }
*/
}

void keyPressed() {
  println("pressed " + int(key) + " " + keyCode);
}

void keyTyped() {
  println("typed " + int(key) + " " + keyCode);
}

void keyReleased() {
  println("released " + int(key) + " " + keyCode);
}


void mousePressed() {
    loop();
}

void shoot(){
  ellipse(mouseX, mouseY, 5, 5); 
}