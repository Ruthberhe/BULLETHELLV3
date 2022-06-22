abstract class GameObject {
  float x, y, vx, vy, size;
  int hp, lives;

  color c;

  GameObject(float x, float y, float vx, float vy, float size, int lives, int hp, color c) {
    this.x =x;
    this.y =y;
    this.vx =vx;
    this.vy=vy;
    this.size =size;
    this.lives=lives;
    this.hp=hp;
    this.c=c;
  }

  void act() {
    x+=vx;
    y+=vy;
  }


  void show() {
    fill(#FF0000);
    square(x, y, size);
  }

  boolean collidingWith(GameObject obj) {
    return dist(obj.x, obj.y, x, y) < obj.size/2+ size/2;
  }
  boolean offScreen() {
    return x<0 || x > width || y<-50 || y> height+50;
  }
}
