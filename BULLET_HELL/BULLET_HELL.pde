import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


ArrayList<GameObject> object;
PImage egg, bucket, spaceship, enemies,enemy2, explosion, screen,opscreen,gamescreen,lbopscreen, fire,greenfire, meteor, blueviper, exterminator,bleep, spaces, selectedimage, yellow;

StarFighter player1;



int mode;
final int INTRO =0;
final int GAME =1 ;
final int PAUSE =2 ;
final int GAMEOVER = 3;
final int OPTIONS = 4;


color  GB  =#D8DBE2;
color  LSB =#A9BCD0;
color  CB  =#58A4B0;
color  CH  =#373F51;
color  EB  =#1B1B1E;
color  W   =#FFFFFF;
color  R   =#FF0000;
color  B   =#000000;

PFont techno;


//keyboard variables
boolean left, right, up, down, space;
int countdown;



//audio
Minim minim;
AudioPlayer games, pew, coin;

//gif variables
int t=0;
PImage[] gifl;
int nof;
int f;


float z;
float tsize;

void setup() {
  z=255;
  tsize=200;
  t=0;
  nof=5;
  gifl= new PImage[nof];
  while (t<nof){
   gifl[t]=loadImage ("frame_"+t+"_delay-0.1s.gif");
  t++;
  }
  
  PFont techno = createFont("techno_hideo.ttf", 100);
  textFont(techno);
  
  
  textAlign(CENTER);
  //rectMode(CENTER);
 
  fullScreen();


  object= new ArrayList<GameObject>();
  player1= new StarFighter();

  left=right=up=down=space=false;

  egg=loadImage("egg.png");
  bucket=loadImage("bucket.png");
  spaceship=loadImage("spaceship.png.png");
  enemies=loadImage("enemies.png");
  explosion=loadImage("explosion.png");
  screen=loadImage("screen.jpg");
  opscreen=loadImage("opscreen.png");
  enemy2=loadImage("enemy2.png");
  fire=loadImage("fire.png.png");
  meteor=loadImage("meteor.png");
  exterminator=loadImage("exterminator.png.png");
  blueviper=loadImage("blueviper.png");
  spaces=loadImage("space.png");
   bleep=loadImage("bleep.png");
    gamescreen=loadImage("gamescreen.jpg");
     greenfire=loadImage("greenfire.png.png");
      yellow=loadImage("yellow.png");
      lbopscreen=loadImage("lbopscreen.jpg");
 
 selectedimage=spaceship;
  
  //audio
  minim=new Minim(this);
  games= minim.loadFile("games.mp3");
 pew= minim.loadFile("pew.mp3");
  coin= minim.loadFile("coin.wav");
 
 countdown =150;
  
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode ==PAUSE) {
    pause();
  } else if (mode ==GAMEOVER) {
    gameover();
  } else if (mode== OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
