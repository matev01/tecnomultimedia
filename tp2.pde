/* 
 Tecnología Multimedial I
 Comisión 1
 Alumno: Velazco Mateo
 Legajo: 88130/6
 Docente: José Luis Bugiolachi
 link:https:https://youtu.be/0FUdz6uvsUY
 
 Trabajo práctico #3 - Ilusión Óptica Interactiva 
 "Buscando el camino mas largo"
 */
 
 
int cant= 50;
float cambio;
float  x;

void setup(){

size (500,500);
rectMode(CENTER);  

}

void draw(){
  background(255);
  for(int cuad=0; cuad<cant; cuad++)   {
    float tam= map(cuad, 0, cant-1,width,5);
           x = map(cuad,0,cant,height,mouseX);
     float y = map (cuad,0,cant,100,mouseY);
    if(cuad%2==0){
    fill(x, y);
    }else { 
      fill(30);
    }
    ellipse(width/2, height/2, tam, tam);
    }
   }
void mousePressed(){
  cant=30;
}
void keyPressed(){
 cant=50; 
}
