void setup()
{
  size(400, 400);
  background(100);
  textSize(30);
}


void draw()
{
  background(50);
  stroke(0,255,0);
  line(200, 0, 200, 400);
  line(0, 200, 400, 200);
  ellipse(100, 100, 100, 100);
  fill(255);
  text("tp0", 300, 100);
  println("el valor en del mouse en x es: ");
  println(mouseX);
  fill(200,10,10);
  rect(200, 350, 50, 50);
  rect(250, 300, 50, 50);
  rect(350, 200, 50, 50);
  rect(300, 250, 50, 50);
  triangle(100, 250, 50, 350, 150, 350);
}
