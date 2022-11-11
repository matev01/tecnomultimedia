Principal prin;
Lluvia [] enemigo = new Lluvia [12];

void setup() {
  size(600, 400);
  prin = new Principal();
  for (int i = 0; i<enemigo.length; i++) {
    enemigo[i] = new Lluvia ();
  }
}

void draw() {
  background(255);
  prin.pantalla();
  for (int i = 0; i<enemigo.length; i++) {    
    enemigo[i].dibujarLluvia();
    enemigo[i].bajar();
  }
}
void keyPressed() {
  prin.moverAuto(keyCode);
  prin.accionarTurbo(key);
}
