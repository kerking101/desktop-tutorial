void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  strokeWeight(2);
  stroke(255, 0, 0);
  line(50, 50, 350, 350);

  strokeWeight(4);
  stroke(0, 255, 0);
  line(350, 50, 50, 350);

  strokeWeight(6);
  stroke(255, 255, 0);
  line(200, 0, 200, 400);

  noLoop();
}
