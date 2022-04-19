void setup()
{
  size(400, 400);
  background(255, 10, 10);
}
void draw()
{
  background(64, 207, 255);
  println(mouseX, mouseY);
  stroke(100);
  ellipseMode(CENTER);
  fill(20, 0, 20);
  ellipse(100, 100, 100, 100);
  ellipse(300, 100, 100, 100);
  fill(255);
  triangle(75, 70, 90, 125, 130, 100);
  triangle(325, 70, 270, 100, 311, 132);
  fill(0, 50, 100);
  strokeWeight(2);
  stroke(200, 200, 0);
  ellipse(200, 200, 300, 250);
  fill(0);
  stroke(0);
  ellipse(120, 150, 50, 50);
  ellipse(200, 150, 50, 50);
  line(250, 250, 350, 270);
  line(250, 260, 350, 290);
  line(250, 270, 350, 310);

  line(150, 250, 50, 270);
  line(150, 260, 50, 290);
  line(150, 270, 50, 310);
  fill(200,0,0);
  rectMode(CENTER);
  rect(180, 230, 40, 40,0,0,50,50);
}
