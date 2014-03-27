class Countdown {
  
  Minim minim;
  AudioSample tenLeft;
  AudioSample timeAdded;
  PFont font;
  String time = "010";
  int t;
  int interval = 60;

  Countdown() {
    font = createFont("Arial", 30);
    fill(0);
  }

  void display() {
    t = interval-int(millis()/1000);
    time = nf(t , 3);
    if(t == 0){
      println("GAME OVER");
    interval+=10;}

     text(time, width/2, height/2);
  }
}
