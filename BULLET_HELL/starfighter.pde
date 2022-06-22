class StarFighter extends GameObject {
  int cooldown, threshold;


  StarFighter() {
    super(width/2, height-200, 0, 0, 40, 10, 0, W);
    threshold=10;
    cooldown=3;
  }

  void act() {



    //controll star
    if (left)  vx=-10;
    if (right) vx= 10;
    if (up)    vy=-10;
    if (down)  vy= 10;
    if (!up && ! down) vy=vy*0.9;
    if (!left && ! right) vx=vx*0.9;

    x+=vx;
    y+=vy;

    //restrict
    if (x>width-10) x=width-10;
    if (x<1) x=1;
    if (y>height-20) y=height-20;
    if (y<1) y=1;

    //collision
    int i=0;
    while (i<object.size()) {
      GameObject obj =object.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith(obj)) {

          image(gifl[f], x+20, y);

          lives--;
          obj.lives=0;
        }
      }
      i++;
    }
    int f=0;
    while (f<object.size()) {
      GameObject obj =object.get(f);
      if (obj instanceof PowerUp) {
        if (collidingWith(obj)) {
          // lives++;
          coin.rewind();
          coin.play();
          lives++;
          obj.lives=0;
          textSize(50);
          text("lives:"+lives, width-200, 50);
        }
      }
      f++;
    }

    cooldown++;
    if (selectedimage==blueviper) {
      if (space && cooldown >= threshold) {
        object.add(new Bullet(player1.x, player1.y, 0, 10));
        object.add(new Bullet(player1.x, player1.y, 0, -10));
        object.add(new Bullet(player1.x, player1.y, -10, 0));
        object.add(new Bullet(player1.x, player1.y, 10, 0));
        cooldown=0;
      }
    }

    if (selectedimage==spaceship) {
      if (space && cooldown >= threshold) {
        object.add(new Bullet(player1.x, player1.y, 0, -10));
        object.add(new Bullet(player1.x+100, player1.y, 0, -10));
        cooldown=0;
      }
    }

    if (selectedimage==exterminator) {
      if (space && cooldown >= threshold-5) {
        object.add(new Bullet(player1.x+50, player1.y, 0, 10));
        object.add(new Bullet(player1.x+50, player1.y, 0, -10));
        object.add(new Bullet(player1.x, player1.y, -10, 10));
        object.add(new Bullet(player1.x, player1.y, 10, 0));
        object.add(new Bullet(player1.x, player1.y, 10, 10));
        object.add(new Bullet(player1.x, player1.y, -10, -10));
        object.add(new Bullet(player1.x, player1.y, -10, 10));
        object.add(new Bullet(player1.x, player1.y, 10, -10));
        object.add(new Bullet(player1.x, player1.y, -10, 0));

        cooldown=0;
      }
    }
    if (selectedimage==bleep) {
      if (space && cooldown >= threshold-5) {
        object.add(new Bullet(player1.x, player1.y, 0, -30));
        object.add(new Bullet(player1.x+50, player1.y, 0, -30));
        object.add(new Bullet(player1.x+100, player1.y, 0, -30));
        cooldown=0;
      }
    }
  }

  void show() {
    imageMode(CENTER);
    fill(#FF0000);
    image(selectedimage, x+50, y);
    textSize(30);
    fill(LSB);

    text("lives:"+lives, width-200, 50);
    if (lives==0) mode=GAMEOVER;
  }
}
