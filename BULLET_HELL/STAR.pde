class Star extends GameObject {

  Star() {
    super(random(width), 0, 0, 0, random(1, 3), 1, 0, W);
    vy=size;
  }



  void act() {
    super.act();
    if (y>height) lives=0;
  }


  void show() {
    noStroke();
    fill(W);
    square(x, y, size);
  }
}
