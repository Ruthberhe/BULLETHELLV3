void game() {
  rectMode(CENTER);
  imageMode(CORNER);
  image(gamescreen, 0, 0);
  games.play();
  countdown();


  
  int i=0;
  while (i<object.size()) {
    GameObject s =object.get(i);
    s.act();
    s.show();
    if (s.lives==0) {
      object.remove(i);
    } else {
      i++;
    }
  }
  player1.act();
  player1.show();
}

void addObjects() {
  object.add(new Star());

  if (frameCount % 20==0) object.add(new Enemy());
  if (frameCount % 20==0) object.add(new Enemy2());
}

void gameEngine() {

  int i=0;
  while (i<object.size()) {
    GameObject s =object.get(i);
    s.act();
    s.show();
    if (s.lives==0) {
      object.remove(i);
    } else {
      i++;
    }
  }
}


void debug() {
  text(frameRate, 20, 20);
  text(object.size(), 10, 30);
}

void countdown() {
  textSize(tsize);
  countdown--;
  tsize--;
  z=map(tsize, 200, 0, 255, 0);
  if (countdown<=100) {
    fill(B, z);
    text("3", width/2, height/2);
  }
  if (countdown<=50) {
    fill(B, z+50);
    text("2", width/2, height/2);
  }
  if (countdown<=0) {
    fill(B, z+50);
    text("1", width/2, height/2);
  }

  if (countdown<0) {
    addObjects();
    gameEngine();
    debug();
  }
}




void gameClicks() {
  mode=PAUSE;
}
