void enemigo(float px, float py, float tam) {
  fill(40, 200, 200, 100);
  ellipse(px, py, tam, tam);
}
void textos(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  fill(255);
  text(texto, px, py);
}
