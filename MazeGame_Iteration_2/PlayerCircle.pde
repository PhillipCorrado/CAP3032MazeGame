class Circle {
  
  Minim minim;
  AudioSample collision;
  int x;
  int y;
  int size;
  int speedX;
  int speedY;
  boolean moveUp;
  boolean moveDown;
  boolean moveLeft;
  boolean moveRight;
  color white;
  
  Circle() {
    x = 100;
    y = 250;
    size = 50;
    speedX = 0;
    speedY = 0;
    ellipseMode(CENTER);
    white = color(255);
  }
  
  void moveUp() {
    speedY = -5;
    speedX = 0;
  }
  
  void moveDown() {
    speedY = 5;
    speedX = 0;
  }
  
  void moveLeft() {
    speedX = -5;
    speedY = 0;
  }
  
  void moveRight() {
    speedX = 5;
    speedY = 0;
  }
  void moveNowhere() {
    speedX = 0;
    speedY = 0;
  }
  
  void wallCollison() {
    if(x+speedX > width-25) {
      speedX = -10;
    } 
    if(x+speedX < 25) {
      speedX = 10;
    }
    if(y+speedY > height-25) {
      speedY = -10;
    }
    if(y+speedY < 25) {
      speedY = 10;
    }
  }
  
  void display() {
    ellipse(x+=speedX, y+=speedY, size, size);
    fill(white);
    noStroke();
  }
}
