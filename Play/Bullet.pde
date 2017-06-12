class Bullet{
  PShape shot;
  float X, Y, sX, sY;
  float rad;
  Bullet (float spd, float rad, float x, float y, float a, float b) {
    noStroke();
    shot = createShape(ELLIPSE,x,y,a,b);
    fill(100);
    sX = spd * cos(rad);
    sY = spd * sin(rad);
  }
  
  void update() {
     X += sX;
     Y += sY;
  }  
    
  void placeOnMap() {
    
    
    
  }
}