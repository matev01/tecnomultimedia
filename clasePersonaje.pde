class Personaje {

  PImage auto;
  int mx;
  int my = 300;
  int tampj;
  Turbo t;

  //contador
  int begin;
  int duracion;
  int time;

  int vidas;

  Personaje() {
    auto = loadImage("auto1.png");
    t = new Turbo();
    tampj=100;

    //Contador
    begin = millis();
    time=duracion=20;

    vidas = 3;
  }

  void dibujarPersonaje(Fondo f, Fondo g) {
    float p = f.getEscena();
    if (p == 1) {
      image(auto, mx, my, tampj, tampj);
      text("VIDAS: "+ vidas, 50, 50);

      if (time> 0) {
        time = duracion -(millis()-begin)/1000;
        text("TIEMPO: "+ time, 400, 50);
      } else {
        text("TIEMPO: "+ time, 400, 50);
        g.cambiarEstado("ganar");
        reciclarVar();
      }
    }
  }
   void pasar() {
    if (mx+tampj>width ) { 
      mx =0;
      my = 300; 
      tampj = 100;
    }
  }
   void pasar1() {
    if (mx<0) { 
      mx =width-tampj;
      my = 300; 
      tampj = 100;
    }
  }

  void mover(int teclaPresionada) {
    if (teclaPresionada == RIGHT) {
      mx += 5;
    }
    if (teclaPresionada == LEFT) {
      mx -= 5;
    }
    //if (teclaPresionada == UP) {
    //my -= 5;
    //}
    // if (teclaPresionada == DOWN) {
    //my += 5;
    //}
  }
  void turbo(int teclaPresionadat) {
    if (teclaPresionadat == 't') {
      mx += 10;
      t.dibujarTurbo(mx);
    }
  }
  void reciclarVar () {
    vidas = 3;
    begin = millis();
    time=duracion=20;
  }

  //COLISIÓN

  void colisionEnemigo(Lluvia[] enemigo, Personaje player, Fondo fin) {
    for (int i=0; i<enemigo.length; i++) {
      boolean colisionEnemigo = dist(enemigo[i].posXH, enemigo[i].posYH, player.mx, player.my) < player.tampj/6+enemigo[i].ctam;


      if (colisionEnemigo  && enemigo[i].activaLluvia) {
        vidas--;
        enemigo[i].activaLluvia = false;
      }
      if (vidas == 0) {
        reciclarVar();
        fin.cambiarEstado("perder");
      }
    }
  }
}
