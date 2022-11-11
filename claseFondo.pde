class Fondo {
  PImage fon;
  Fondo() {
    fon = loadImage("fondo1.png");
  }
  void dibujarFondo() {
    image(fon, 0, 0, width, height);
  }
}
