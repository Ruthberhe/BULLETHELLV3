void tactile(int x, int y, int w, int h) {
  rectMode(CORNER);
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    strokeWeight(0);
  } else {
    strokeWeight(5);
  }
}

void tactiles(int cx, int cy) {

  if (dist(cx, cy, mouseX, mouseY)<200) {
    stroke(20, 218, 242);
  } else {
    stroke(0);
  }
}

void mouseReleased() {
  if (mode==INTRO) {
    introClicks();
  } else if (mode==GAME) {
    gameClicks();
  } else if (mode==PAUSE) {
    pauseClicks();
  } else if (mode==GAMEOVER) {
    gameoverClicks();
  } else if (mode==OPTIONS) {
    optionsClicks();
  }
}

void keyPressed() {
  if (keyCode ==RIGHT ) right=true;
  if (keyCode==LEFT) left=true;
  if (keyCode ==UP ) up=true;
  if (keyCode==DOWN) down=true;
  if (keyCode==' ') space=true;
}

void keyReleased() {
  if (keyCode ==RIGHT ) right=false;
  if (keyCode==LEFT) left=false;
  if (keyCode ==UP ) up=false;
  if (keyCode==DOWN) down=false;
  if (keyCode==' ') space=false;
}
