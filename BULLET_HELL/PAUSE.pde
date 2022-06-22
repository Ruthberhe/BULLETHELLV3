void pause() {
  games.pause();

  textSize(50);
  fill(CH);
  text("CLICK ANYWHERE TO RESUME", width/2, height/2);
}

void pauseClicks() {
  mode=GAME;
}
