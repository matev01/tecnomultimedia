class Lluvia {
  float posXH, posYH, ctam;
  PImage bomba;
  boolean activaLluvia;

  Lluvia() {

    posXH  = random(0, 800);
    posYH  = random(-width/2);
    ctam= random(15, 25);
    activaLluvia = true;

    bomba = loadImage("bomba.png");
  }

  void dibujarLluvia(Fondo f) {
    float p = f.getEscena();
    if (p == 1) {
      image(bomba, posXH, posYH, ctam, ctam);
    }
  }

  void bajar() {
    posYH ++;

    if (posYH>height) {
      posYH= random(-height/2, -ctam);
      ctam= random(15, 25);
      activaLluvia = true;
    }
  }
}
