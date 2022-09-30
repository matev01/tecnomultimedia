class Personaje {
  PImage auto;
  int mx;
  Turbo t;

  Personaje() {
    auto = loadImage("auto1.png");
    t = new Turbo();
  }
  void dibujarPersonaje() {
    image(auto, mx, 290, 100, 100);
  }
  void mover(int teclaPresionada) {
    if (teclaPresionada == RIGHT) {
      mx += 5;
    }
    if (teclaPresionada == LEFT) {
      mx -= 5;
    }
  }
  void turbo(int teclaPresionadat) {
    if (teclaPresionadat == 't') {
      mx += 10;
      t.dibujarTurbo(mx);
    }
  }
}
