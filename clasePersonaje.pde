class Personaje {
  PImage auto;
  int mx;
  int my = 300;
  Turbo t;

  Personaje() {
    auto = loadImage("auto1.png");
    t = new Turbo();
  }
  void dibujarPersonaje() {
    image(auto, mx, my, 100, 100);
  }
  void mover(int teclaPresionada) {
    if (teclaPresionada == RIGHT) {
      mx += 5;
    }
    if (teclaPresionada == LEFT) {
      mx -= 5;
    }
    if (teclaPresionada == UP) {
      my -= 5;
    }
    if (teclaPresionada == DOWN) {
      my += 5;
    }
  }
  void turbo(int teclaPresionadat) {
    if (teclaPresionadat == 't') {
      mx += 10;
      t.dibujarTurbo(mx);
    }
  }
}
