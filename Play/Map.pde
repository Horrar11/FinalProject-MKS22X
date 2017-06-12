class Map {
  //int[][] map = new int[100][100];
  PShape map;
  int X, Y;
  float rad;
  
  Map () {
    map = createShape(RECT, 0, 0, 100, 100);
    stroke(1);
    fill(255);
    rad = 0;
    X = width/2;
    Y = height/2;
    shape(map, X, Y);
  }
  
  void rot(float deg) {
    rad += deg;
    //translate(width/2,height/2);
    translate(X,Y);
    //translate(width, height);
    rotate(rad);
    //shape(map);
    //translate(X, Y);
    shape(map);
    //rotate(rad);
  }
  
  void move(float x, float y) {
    X += x;
    Y += y;
    rotate(rad);
    translate(X, Y);
    shape(map);
  }
  
  
  void update(float spd) {
    //clear();
    if (keyPressed) {
      clear();
      if (key == 'e') {
        rot(PI / 72);
      }
      if (key == 'q') {
        rot(- PI / 72);
      }
      if (key == 'w') {
        move(0, -spd);
      }
      if(key == 'a') {
        move(-spd, 0);
      }
      if (key == 's') {
        move(0, spd);
      }
      if(key == 'd') {
        move(spd, 0);
      }
    }
    //shape(map, X, Y);
  }
  
}