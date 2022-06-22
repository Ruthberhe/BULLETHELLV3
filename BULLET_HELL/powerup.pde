class PowerUp extends GameObject {
  float t;

  PowerUp(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 40, 1, 0, W);
    t=255;
  }


  void act() {
    y-=vy;
    size=size -0.25;

    t=map(size, 40, 0, 255, 0);
    if (offScreen()) lives=0;
  }

  void show() {
    fill(255, t);
    image(yellow, x, y);
  }
}
