class Bullet{
  PShape shot;
  float X, Y, sX, sY;
  Bullet (float x, float y, float a, float b) {
    shot = createShape(ELLIPSE,x,y,a,b);
  }
  
  void update() {
     
  }
  class HLine { 
  float ypos, speed; 
  HLine (float y, float s) {  
    ypos = y; 
    speed = s; 
  } 
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
  }
}