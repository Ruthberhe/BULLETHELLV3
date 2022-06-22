class Enemy extends GameObject {
  int cooldown, threshold;


  Enemy() {
    super(random(width), -50, 0, 5, 30, 1, 0, GB);
    threshold=60;
    cooldown=3;
  }

  void show() {

    image(enemies, x, y, 50, 50);
  }

  void act() {
    super.act();
    cooldown++;
    if (cooldown>=threshold) {
      object.add(new EnemyBullet(x, y, 0, 10));
      cooldown=0;
    }

    int i=0;
    while (i<object.size()) {
      GameObject obj =object.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;

          image(gifl[f], x, y);
          if (lives==0) object.add(new PowerUp(x, y, vx, 2));

          obj.lives=0;
        }
      }
      i++;
    }

    //remove of screen
    if (offScreen())lives =0;
  }
}
