class Map {
  //int[][] map = new int[100][100];
  PShape map;
  float rad;
  
  Map () {
    map = createShape(RECT, 0, 0, 100, 100);
  }
  
  void rot(float deg) {
    translate(width/2, height/2);
    rotate(deg);
    rect(0, 0, 100, 100);
  }
  
  void update() {
    if (keyPressed) {
      if (key == 'q') {
        rot(PI / 36);
      }
      if (key == 'e') {
        rot(- PI / 36);
      }
    }
  }
}