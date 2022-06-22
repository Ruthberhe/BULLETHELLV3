void options() {
  fill(CB, 50);
  rect(0, 0, width, height);

  strokeWeight(2);
  rectMode(CENTER);



  textSize(70);
  fill(B);
  text("CHOOSE YOUR FIGHTER", 500, 50);


  image(selectedimage, 1000, height/3);

  noFill();
  imageMode(CENTER);
  tactiles(200, 400);
  circle(200, 400, 200);
  image(spaceship, 200, 400);

  tactiles(370, 200);
  circle(370, 200, 200);
  image(exterminator, 370, 200, 150, 190);

  tactiles(550, 400);
  circle(550, 400, 200);
  image(blueviper, 550, 400);

  tactiles(370, 400);
  circle(370, 600, 200);
  image(bleep, 370, 600, 150, 190);




  tactile(1240, 690, 100, 50);
  rect(1240, 690, 100, 50);
  fill(B);
  textSize(35);
  text("Back", 1295, 720);
}

void optionsClicks() {
  //mode=INTRO;
  imageMode(CENTER);
  if (dist(200, 400, mouseX, mouseY)<200) {
    selectedimage=spaceship;
  }
  if (dist(370, 200, mouseX, mouseY)<200) {
    selectedimage=exterminator;
  }
  if (dist(550, 400, mouseX, mouseY)<200) {
    selectedimage=blueviper;
  }

  if (dist(370, 600, mouseX, mouseY)<200) {
    selectedimage=bleep;
  }
  if (mouseX>1240 && mouseX<1340 && mouseY>690 && mouseY<740) mode=INTRO;
}
