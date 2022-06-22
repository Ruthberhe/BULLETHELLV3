void intro() {
  rectMode(CORNER);
  games.play();
  imageMode(CORNER);
  image(screen, -20, -20);
  textSize(100);
  fill(W);
  text("NOICE", width/3, 200);

  //options menu
  tactile(1200, 10, 150, 50);
  rect(1200, 10, 150, 50);
  fill(B);
  textSize(30);
  text("options", width-95, 40);

  tactile(590, 500, 200, 60);
  fill(W, 10);
  rect(590, 500, 200, 60);
  fill(W);
  textSize(50);
  text("BEGIN", 690, 550);
}

void introClicks() {
  if (mouseX>1200 && mouseX<1350 && mouseY>10 && mouseY<60) {
    mode=OPTIONS;
  }
  if (mouseX>590 && mouseX<790 && mouseY>500 && mouseY<560) {
    mode=GAME;
  }
}
