float x, y;
float xSpeed, ySpeed;
float diameter = 50;
color ballColor;
PImage logo

void setup() {
  size(800, 600);
  x = width / 2;
  y = height / 2;
  xSpeed = 5;
  ySpeed = 4;
  ballColor = color(0, 0, 255);
  logo = loadImage("
}
void draw() {
  background(255);
  fill(ballColor);
  ellipse(x, y, diameter, diameter);

  x += xSpeed;
  y += ySpeed;

  if (x > width - diameter / 2 || x < diameter / 2) {
    xSpeed *= -1;
    ballColor = color(random(255), random(255), random(255));
  }
  
  if (y > height - diameter / 2 || y < diameter / 2) {
    ySpeed *= -1;
    ballColor = color(random(255), random(255), random(255));
  }
}
