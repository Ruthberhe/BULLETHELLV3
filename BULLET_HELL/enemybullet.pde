class EnemyBullet extends GameObject {

  EnemyBullet (float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 5, 1, 1, R);
  }
  void show() {
    imageMode(CENTER);
    image(greenfire, x, y);
  }
}
