class Lluvia {
  float vx = random(width);
  float vy = random(0, 150);
  PImage bomba;

  Lluvia() {
    bomba = loadImage("bomba.png");
  }

  void dibujarLluvia() {
    image(bomba, vx, vy, 20, 20);
  }
  void bajar() {
    vy ++;
    if (vy > height) {
      vy=0;
    }
  }
}
