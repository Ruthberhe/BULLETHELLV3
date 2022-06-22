class Enemy2 extends GameObject {

  float a;
  float cooldown, threshold;

  Enemy2() {
    super(random(width), -20, 0.5, 2, 40, 1, 0, CH);
    cooldown=3;
    threshold=90;
  }


  void show() {
    image(enemy2, x, y, 90, 90);
  }

  void act() {
    super.act();
    scurve();
    cooldown++;
    if (cooldown>=threshold) {

      cooldown=0;
    }


    int i=0;
    while (i<object.size()) {
      GameObject obj =object.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          image(gifl[f], x, y);

          obj.lives=0;
        }
      }
      i++;
    }
    if (offScreen())lives =0;
  }





  void scurve() {
    x=cos(a)* width/2 + width/2;
    a+=PI/200;
    cooldown++;
    if (cooldown>=threshold) {
      object.add(new EnemyBullet(x, y, 0, 20));
      object.add(new EnemyBullet(x+50, y, 0, 20));

      cooldown=0;
    }
  }
}
