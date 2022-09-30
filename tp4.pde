/* 
 Tecnología Multimedial I
 Comisión 1
 Alumno: Velazco Mateo
 Legajo: 88130/6
 Docente: José Luis Bugiolachi
 link: https://youtu.be/81zVDkIbQRw
 
 Trabajo práctico #4 - Programando con Objetos I
 */
Principal prin;
void setup() {
  size(600, 400);
  prin = new Principal();
}
void draw() {
  background(255);
  prin.pantalla();
}
void keyPressed() {
  prin.moverAuto(keyCode);
  prin.accionarTurbo(key);
}
