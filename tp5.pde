/* 
 Tecnología Multimedial I
 Comisión 1
 Alumno: Velazco Mateo
 Legajo: 88130/6
 Docente: José Luis Bugiolachi
 link:https://youtu.be/znOoEC_20iA
 
 Trabajo práctico #5 - Avanzando con POO
 */

import ddf.minim.*;
Principal prin;

Minim minim;
AudioPlayer player;

void setup() {
  size(600, 400);
  prin = new Principal();
  minim = new Minim(this);
  player = minim.loadFile("ambiente.wav");
}

void draw() {
  background(255);
  /*prin.pantalla();
   prin.colisionEnemigo();
   prin.Perdiste();
   prin.Ganaste();*/
  prin.bajar();
  prin.draw();
  player.play();
  prin.autoPasa();
  prin.autoPasa1();
}
void keyPressed() {
  prin.moverAuto(keyCode);
  prin.accionarTurbo(key);
  prin.key();
}
void mouseClicked() {
  prin.click();
}
