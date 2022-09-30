class Principal {
  Fondo fondoo;
  Personaje player;

  Principal() {
    fondoo = new Fondo();
    player = new Personaje();
  }
  void pantalla() {
    fondoo.dibujarFondo();
    player.dibujarPersonaje();
  }
   void moverAuto(int teclaPresionada) {
    player.mover(teclaPresionada);
 }
 void accionarTurbo(int teclaPresionadat){
    player.turbo(teclaPresionadat);
}
}
