class Bullet extends GameObject {

  Bullet(float player1x, float player1y, float vx, float vy) {
    super(player1x, player1y, vx, vy, 5, 1, 0, LSB);
  }

  void act() {
    super.act();
    int f=0;
    while (f<object.size()) {
      GameObject obj =object.get(f);
      if (obj instanceof Enemy) {
        if (collidingWith(obj)) {
          pew.rewind();
          pew.play();
          hp++;
        }
      }
      f++;
    }
  }

  void show() {
    image(fire, x, y);
    textSize(30);
    fill(LSB);
    text("score:"+hp, 50, 50);
  }
}
