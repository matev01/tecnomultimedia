class Principal {
  Fondo fondoo;
  Personaje player;
  Lluvia enemigo;

  Principal() {
    fondoo = new Fondo();
    player = new Personaje();
    enemigo = new Lluvia();
  }

  void pantalla() {
    fondoo.dibujarFondo();
    player.dibujarPersonaje();
  }
  void moverAuto(int teclaPresionada) {
    player.mover(teclaPresionada);
  }
  void accionarTurbo(int teclaPresionadat) {
    player.turbo(teclaPresionadat);
  }
}
