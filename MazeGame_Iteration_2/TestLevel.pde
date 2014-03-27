class TestLevel {
  
  PGraphics pg;
  AudioSample success;
  AudioSample collision;
  
  int rect1X;
  int rect1Y;
  int rect1Width;
  int rect1Height;
  int rect2X;
  int rect2Y;
  int rect2Width;
  int rect2Height;
  int i;
  int exitX;
  int exitY;
  color white;
  color green;
  color blue;
  color red;
  color orange;
  
  TestLevel() {
    success = minim.loadSample("MazeGameSuccess.wav", 512);
    rect1X = 100;
    rect1Y = 100;
    rect1Width = 250;
    rect1Height = 100;
    rect2X = 250;
    rect2Y = 450;
    rect2Width = 500;
    rect2Height = 100;
    i = 0;
    exitX = 450;
    exitY = 250;
    white = color(255);
    green = color(0, 255, 0);
    blue = color(0, 0, 255);
    red = color(255, 0, 0);
    orange = color(255, 102, 0);
    rectMode(CENTER);
    strokeWeight(5);
  }
  
  void rectOne() {
    rect(rect1X, rect1Y, rect1Width, rect1Height);
    fill(white);
    
  }
  
  void levelOne() {
    rectOne();
    rect(rect2X, rect2Y, rect2Width, rect2Height);
    fill(white);
  }
  
  void exitOne() {
    exitX = 450;
    exitY = 250;
    ellipse(exitX, exitY, 50, 50);
    noFill();
    stroke(white);
    
    if(dist(player.x, player.y, exitX, exitY) <= 10) {
      i += 1;
      timer.interval +=10;
      success.trigger();
    }
  }
  
  void levelTwo() {
    rect1X = 200;
    rect1Y = 300;
    rect1Width = 250;
    rect1Height = 100;
    rect(rect1X, rect1Y, rect1Width, rect1Height);
    fill(white);
  }
  
  void exitTwo() {
    exitX = 150;
    exitY = 450;
    ellipse(exitX, exitY, 50, 50);
    noFill();
    stroke(white);
    
    if(dist(player.x, player.y, exitX, exitY) == 0) {
      i += 1;
    }
  }
  
  void levelCollision() {
    if(player.x > rect1X && player.x < rect1Width) {
      println("DEAD");
    }
  }
  
  void display() {
    if(i == 0) {
      background(orange);
      levelOne();
      exitOne();
    }
    if(i == 1) {
      background(green);
      levelTwo();
      exitTwo();
    }
  }
}
