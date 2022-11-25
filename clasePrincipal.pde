class Principal {
  int estado;

  Fondo fondo;
  Personaje player;
  Lluvia lluvia;

  Lluvia [] enemigo = new Lluvia [15];

  Principal() {
    estado = 0;

    fondo = new Fondo(0, 0);
    player = new Personaje();
    lluvia = new Lluvia();

    for (int i = 0; i<enemigo.length; i++) {
      enemigo[i] = new Lluvia ();
    }
  }
  //actualizar()
  void bajar() {
    for (int i = 0; i<enemigo.length; i++) {
      enemigo[i].bajar();
    }
    player.colisionEnemigo(enemigo, player, fondo);
    fondo.actualizar();
  }

  void draw () {

    fondo.draw();

    player.dibujarPersonaje(fondo, fondo);

    for (int i = 0; i<enemigo.length; i++) {
      enemigo[i].dibujarLluvia(fondo);
    }
  }

  //resetear()
  void reciclar() {
    for (int i = 0; i<enemigo.length; i++) {
      enemigo[i].dibujarLluvia(fondo);
    }
  }

  void moverAuto(int teclaPresionada) {
    player.mover(teclaPresionada);
  }
  void accionarTurbo(int teclaPresionadat) {
    player.turbo(teclaPresionadat);
  }
   void autoPasa() {
    player.pasar();
  }

  void autoPasa1() {
    player.pasar1();
  }

  void click() {
    fondo.click(fondo, player);
  }

  void key() {
    fondo.key(fondo);
  }
}
/*void pantalla() {
   fondo.dibujarFondo();
   player.dibujarPersonaje();
   lluvia.dibujarLluvia();
   lluvia.bajar();
   
   for (int i = 0; i<enemigo.length; i++) {
   enemigo[i].dibujarLluvia();
   enemigo[i].bajar();
   }
   }

  /*void Perdiste() {
   if (vidas <= 0) {
   fondoo.dibujarFondo1();
   }
   }*/
  /*void Ganaste() {
   //if (puntos>=3) {
   if (time> 0) {
   time = duracion -(millis()-begin)/1000;
   text("TIEMPO: "+ time, 100, 50);
   } else {
   text("TIEMPO: "+ time, 100, 50);
   
   fondoo.dibujarFondo2();
   //reciclarVar();
   }
   }

  /*void colisionEnemigo(Fondo fin) {
   for (int i=0; i<enemigo.length; i++) {
   boolean colisionEnemigo = dist(enemigo[i].posXH, enemigo[i].posYH, player.mx, player.my) < player.tampj/6+enemigo[i].ctam;
   
   
   if (colisionEnemigo  && enemigo[i].activaLluvia) {
   vidas--;
   enemigo[i].activaLluvia = false;
   }
   if (vidas == 0) {
   //reciclarVar();
   //println ("PERDISTE");
   fin.cambiarEstado("perder");
   }
   }
   */
