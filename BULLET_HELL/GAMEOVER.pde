void gameover() {
  rectMode(CENTER);
  games.rewind();

  fill(CH, 5);
  rect(width/2, height/2, width, height);
  fill(LSB);
  textSize(100);
  text("GAMEOVER", width/2, height/2);



  tactile(590, 500, 200, 60);
  fill(B, 100);
  rect(590, 500, 200, 60);
  fill(W);
  textSize(40);
  text("RESTART", 690, 550);
}

void gameoverClicks() {

  if (mouseX>590 && mouseX<790 && mouseY>500 && mouseY<560) {
    mode=INTRO;
    reset();
  }
}
