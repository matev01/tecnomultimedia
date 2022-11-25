class Fondo {
  PImage fon, fon2;
  String estado;
  int p=0;
  float x, y;

  Boton boton1;

  Fondo(float x_, float y_) {
    x = x_;
    y = y_;

    fon = loadImage("fondo1.png");
    fon2 = loadImage("fondo.jpg");

    boton1 = new Boton ("INICIAR", width/2, height/2-40, 150, 50, 45);

    estado = "menu";
  }

  void dibujarFondo() {
    image(fon2, x, y, width, height);
  }

  void draw () {

    if (estado.equals("menu")) {
      p = 0;
      dibujarFondo();
      textAlign(CENTER);
      text("Moverse con las felchas <--->", 300, 200);

      //botón INICIAR
      boton1.dibujar();
    }
    if (estado.equals("juego")) {
      p = 1;
      dibujarFondo();

      image(fon, 0, 0, 800, 400);
      noStroke();
    }
    if (estado.equals("ganar")) {
      p = 2;
      dibujarFondo();

      image(fon2, 0, 0, width, height);
      textSize(15);
      textAlign(CENTER);
      text("GANASTE, VOLVÉ A JUGAR PRESIONANDO LA TECLA -R- !!", 300, 200);
    }
    if (estado.equals("perder")) {
      p = 3;
      dibujarFondo();

      image(fon2, 0, 0, width, height);
      textSize(15);
      textAlign(CENTER);
      text("NO TE PREOCUPES, PODES VOLVER A INTENTAR PRESIONANDO LA TECLA -R- !!", 300, 200);
    }
  }

  void actualizar() {
    reciclar();
  }

  void reciclar() {
    p = 0;
  }

  void click (Fondo f, Personaje e) {
    if (p == 0) {
      if ((mouseX > width/2) && (mouseX < width/2+150) && (mouseY > 160) && (mouseY < 160+50)) {
        f.cambiarEstado("juego");
        e.reciclarVar();
      }
    }
  }
  //reiniciar
  void key (Fondo f) {
    if (keyPressed) {
      if (p == 1 || p==2 || p==3) {
        if (key == 'r') {
          f.cambiarEstado("menu");
        }
      }
    }
  }

  float getEscena() {
    return p;
  }

  void cambiarEstado(String nuevoEstado) {
    estado = nuevoEstado;
  }

  String getEstado() {
    return estado;
  }
}
