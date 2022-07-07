/* 
 Tecnología Multimedial I
 Comisión 1
 Alumno: Velazco Mateo
 Legajo: 88130/6
 Docente: José Luis Bugiolachi
 link:https://www.youtube.com/watch?v=_MT_oVTI7W8&ab_channel=MateoVelazco
 
 Trabajo práctico #3 - Juego interactivo libre 
 "Pasare?"
 */

int cant = 7;
float [][] posicion = new float[cant][2];     //posicion de enemigos x e y
int tam;                                      // tamaño de enemigo
float [] dir = new float[cant];
float bolax, bolay; 
boolean disparada;
int contador=3;
int pantalla;
String [] titulos = {"PASARE?", "Perdiste", "Lo lograste! \nFelicitaciones! "};
PImage instrucciones;


void setup() {
  size(800, 600);
  for (int i=0; i<cant; i++) {
    tam = (60);
    dir[i] = random(1, 4);
    posicion[i][0] = random(-200, -100);
    posicion[i][1] = random(100, height-150);
  }
  bolax = width/2;
  bolay = height-50;
}

void draw() {
  background(0);
  if (pantalla==0) {
    textSize(20);
    text("¿Tener habilidad o suerte?", 400, 400);
    textos(titulos[0], width/2, height/2, 50 );
  } else if (pantalla==1) {
    instrucciones = loadImage("pantalla.png");
    image (instrucciones, 0, 0, width, height);
  } else if (pantalla==2) {

    textSize(12);
    text("vidas: ", 25, 12);
    text(contador, 50, 12);

    for (int i=0; i<cant; i++) {
      enemigo(posicion[i][0], posicion[i][1], tam);
      if (posicion[i][0]>width+tam) {
        tam = (60);
        dir[i] = random(1, 2);
        posicion[i][0] = random(-200, -100);
        posicion[i][1] = random(100, height-150);
      }
      posicion[i][0] += dir[i];
      if (derribar(bolax, bolay, posicion[i][0], posicion[i][1], tam)) {
        background(255, 255, 0);
        disparada = false;
        posicion[i][0] = random(-200, -100);
        posicion[i][1] = random(100, height-150);
        contador --;
      }
    }

    fill(255, 255, 0);                  //personaje
    ellipse(bolax, bolay, 10, 20);
    if (disparada && bolay> 0) {
      bolay --;
    } else {
      bolax = mouseX;
      bolay = height-50;
      disparada = false;
    }
  }
  if (contador<=0) {
    background(0);
    pantalla=3;
    textos(titulos[1], width/2, height/2, 50 );
    text("Presione R para reiniciar", 400, 400);
  }
  if (bolay<=0) {
    pantalla=4;
    background(0);
    textos(titulos[2], width/2, height/2, 50 );
  }
}

boolean derribar(float bx, float by, float nx, float ny, int tam) {
  float distan = dist(bx, by, nx, ny);
  return distan <tam;
}

void keyPressed() {
  if (key == 'p') {
    disparada = true;
  }
  if (key == 'r') {
    pantalla=0;
    contador=3;
    fill(255, 255, 0);           
    ellipse(bolax, bolay, 10, 20);
    if (disparada && bolay> 0) {
      bolay --;
    } else {
      bolax = mouseX;
      bolay = height-50;
      disparada = false;
    }
  }
}

void mousePressed() {
  if (pantalla>=0 && pantalla<2) {
    pantalla ++;
  }
}
