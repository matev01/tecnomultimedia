class Boton {

  //Propiedades
  float x, y, ancho, alto, size;
  String label;

  //Constructor
  Boton(String label_, float x_, float y_, float ancho_, float alto_, float size_) {
    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
    label = label_;
    size = size_;
  }

  //Metodos
  void actualizar() {
    dibujar();
  }

  void dibujar() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    noStroke();
    if (zona()) {
      fill(0);
    } else {
      fill(234, 57, 90);
    }
    rectMode(CENTER);
    rect(0, 0, ancho, alto, 8);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(30);
    text( label, 0, 0);
    popStyle();
    popMatrix();
  }

  boolean zona () {
    boolean b;
    if ((mouseX > width/2) && (mouseX < width/2+150) && (mouseY > height/2-40) && (mouseY < height/2+10)) {
      b = true;
    } else {
      b = false;
    }
    return b;
  }
}
