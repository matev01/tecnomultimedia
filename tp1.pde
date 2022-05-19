PImage imag1, imag2, imag3, imag4, imag5, imag6, imag7, imag8;
PFont fuenteT, fuenteC;
float variable;
String titulo;
int subeT, mid, subeI, subeI2, subeI3, subeC, subeC2, subeC3;

void setup() {
  size(500, 500);
  background(125, 175, 255);
  rectMode(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);

  variable =random(100, 300);
  titulo = "Tom y Jerry";
  subeT = 500;
  subeI = 0;
  subeI2 = 500;
  subeC = 500;
  subeC2 = 500;
  subeC3 = 500;

  mid= width/2;
  textAlign(CENTER);

  fuenteT = loadFont ("titulo.vlw");
  fuenteC = loadFont ("credito.vlw");

  imag2 = loadImage("juntos1.png");
  imag3 = loadImage("juntos2.png");
  imag4 = loadImage("tom2.png");
  imag5 = loadImage("jerry2.png");
  imag6 = loadImage("pelea1.png");
  imag7 = loadImage("pelea2.png");
  imag8 = loadImage("fin.png");
}

void draw() {
  background(125, 175, 255);
  noStroke();
  fill(196, 255, 241);
  rect(250, 250, 200, 500);
  textFont (fuenteT); 

  imag1 = loadImage("jerry1.png");
  image(imag1, 60, 100, 80, 80);
  imag1 = loadImage("tom1.png");
  image(imag1, 440, 400, 90, 90);

  fill(0);
  textSize (40);
  text(titulo, mid, subeT);
  subeT --;

  if (subeT <= 0) {
    background(125, 175, 255);
    noStroke();
    fill(196, 255, 241);
    rect(250, 250, 280, 500);
    textFont (fuenteC); 

    image(imag2, 50, 250, 100, 100);
    image(imag3, 450, subeI, 120, 120);

    fill(0);
    textSize (25);
    text("PRODUCERS\nAsley Postlewaite\n Darrel Van Citters", mid, subeC);
    text("ASOCIATE PRODUCERS\n Kimberly S. Moreau", mid, subeC+150);

    subeI ++;
    subeC --;
  }
  if (subeC <= 0) {
    background(125, 175, 255);
    noStroke();
    fill(196, 255, 241);
    rect(250, 250, 290, 500);

    image(imag5, 50, variable, 90, 90);
    image(imag4, 450, subeI2, 120, 120);

    fill(0);
    textSize (25);
    text("TOM AND JERRY THEME\n Writen By\n Scoot Bradley", mid, subeC2);
    text("Performed by\n Andy Sturmer", mid, subeC2+150);

    subeI2 --;
    subeC2 --;
  }

  if (subeC2 <= 0) {
    background(125, 175, 255);
    noStroke();
    fill(196, 255, 241);
    rect(250, 250, 290, 500);

    image(imag6, 60, height/2, 100, 100);
    image(imag7, 450, height/2, 120, 120);

    fill(0);
    textSize (25);
    text("MUSIC BY\n David Ricard\n John Tongeren", mid, subeC3);
    text("CASTING BY\n Dawn Hershey, CSA", mid, subeC3+150);

    subeC3--;
  }
  if (subeC3 <= 0) {
    background(200, 0, 0);
    fill(255, 11, 23);
    ellipse(width/2, height/2, 400, 400);
    fill(255, 31, 23);
    ellipse(width/2, height/2, 300, 300);

    image(imag8, width/2, 200, 250, 250);

    fill(0);
    text("FIN", mid, 350);
  }
  if (keyPressed) {
  variable =random(100, 300);
  subeT = 500;
  subeI = 0;
  subeI2 = 500;
  subeC = 500;
  subeC2 = 500;
  subeC3 = 500;
  }
}
