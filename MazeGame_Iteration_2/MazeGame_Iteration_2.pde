import ddf.minim.*;

Minim minim;
AudioPlayer playerA;
AudioSample up;
AudioSample down;
AudioSample left;
AudioSample right;

Circle player;
TestLevel level;
Countdown timer;

void setup() {
  size(500, 500);
  smooth();
  minim = new Minim(this);
  playerA = minim.loadFile("MazeGameBGM.wav");
  up = minim.loadSample("MazeGameUp.wav", 512);
  down = minim.loadSample("MazeGameDown.wav", 512);
  left = minim.loadSample("MazeGameLeft.wav", 512);
  right = minim.loadSample("MazeGameRight.wav", 512);
  player = new Circle();
  level = new TestLevel();
  timer = new Countdown();
  playerA.play();
}

void draw() {
  level.display();
  player.display();
  player.wallCollison();
  level.levelCollision();
  timer.display();
}

void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP) {
      player.moveUp();
      up.trigger();
    }
    if(keyCode == DOWN) {
      player.moveDown();
      down.trigger();
    }
    if(keyCode == LEFT) {
      player.moveLeft();
      left.trigger();
    }
    if(keyCode == RIGHT) {
      player.moveRight();
      right.trigger();
    }
  }
}

void keyReleased() {
  player.moveNowhere();
  up.stop();
  down.stop();
  left.stop();
  right.stop();
}


