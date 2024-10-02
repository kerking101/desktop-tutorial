float pacmanX = 200;
float pacmanY = 200;
float pacmanSize = 40;
boolean mouthOpen = true;
int direction = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  
  // Beweeg Pacman op basis van de richting
  if (direction == 0) pacmanX += 2;  // Rechts
  if (direction == 1) pacmanY -= 2;  // Omhoog
  if (direction == 2) pacmanX -= 2;  // Links
  if (direction == 3) pacmanY += 2;  // Omlaag
  
  // Houd Pacman binnen de grenzen van het scherm
  if (pacmanX > width) pacmanX = 0;
  if (pacmanX < 0) pacmanX = width;
  if (pacmanY > height) pacmanY = 0;
  if (pacmanY < 0) pacmanY = height;
  
  // Teken Pacman
  fill(255, 255, 0);
  if (mouthOpen) {
    if (direction == 0) {
      arc(pacmanX, pacmanY, pacmanSize, pacmanSize, radians(30), radians(330)); // Rechts
    } else if (direction == 1) {
      arc(pacmanX, pacmanY, pacmanSize, pacmanSize, radians(300), radians(240)); // Omhoog
    } else if (direction == 2) {
      arc(pacmanX, pacmanY, pacmanSize, pacmanSize, radians(210), radians(150)); // Links
    } else if (direction == 3) {
      arc(pacmanX, pacmanY, pacmanSize, pacmanSize, radians(120), radians(60)); // Omlaag
    }
  } else {
    ellipse(pacmanX, pacmanY, pacmanSize, pacmanSize);
  }
  
  // Wissel mond openen/sluiten
  if (frameCount % 10 == 0) {
    mouthOpen = !mouthOpen;
  }
}

void keyPressed() {
  if (keyCode == RIGHT) direction = 0;
  if (keyCode == UP) direction = 1;
  if (keyCode == LEFT) direction = 2;
  if (keyCode == DOWN) direction = 3;
}
