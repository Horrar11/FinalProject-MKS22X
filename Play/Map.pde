class Map {
  //int[][] map = new int[100][100];
  PShape map;
  float rad;
  
  Map () {
    map = createShape(RECT, 0, 0, 500, 500);
    rad = 0;
  }
  
  void rot(float deg) {
    rad += deg;
    translate(width/2,height/2);
    //translate(0,0);
    rotate(rad);
    noStroke();
    rect(-500,-500,1000,1000);
    fill(0);
  }
  
  void update() {
    clear();
    if (keyPressed) {
      if (key == 'q') {
        rot(PI / 72);
      }
      if (key == 'e') {
        rot(- PI / 72);
      }
    }
  }
  
}