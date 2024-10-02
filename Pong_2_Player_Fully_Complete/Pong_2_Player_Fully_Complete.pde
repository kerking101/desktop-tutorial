float leftPaddleY = 150;
float rightPaddleY = 150;
float paddleWidth = 10;
float paddleHeight = 60;
float ballX = 200;
float ballY = 200;
float ballSpeedX = 3;
float ballSpeedY = 3;
float ballSize = 10;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  
  // Teken paddles
  rect(30, leftPaddleY, paddleWidth, paddleHeight);
  rect(width - 40, rightPaddleY, paddleWidth, paddleHeight);
  
  // Beweeg linkse paddle
  if (keyPressed) {
    if (key == 'w') leftPaddleY -= 5;
    if (key == 's') leftPaddleY += 5;
  }
  
  // Beweeg rechtse paddle
  if (keyPressed) {
    if (keyCode == UP) rightPaddleY -= 5;
    if (keyCode == DOWN) rightPaddleY += 5;
  }
  
  // Beweeg bal
  ballX += ballSpeedX;
  ballY += ballSpeedY;
  
  // Botsing met boven- en onderkant
  if (ballY < 0 || ballY > height) {
    ballSpeedY *= -1;
  }
  
  // Botsing met paddles
  if (ballX < 40 && ballY > leftPaddleY && ballY < leftPaddleY + paddleHeight) {
    ballSpeedX *= -1;
  }
  if (ballX > width - 40 && ballY > rightPaddleY && ballY < rightPaddleY + paddleHeight) {
    ballSpeedX *= -1;
  }
  
  // Teken bal
  ellipse(ballX, ballY, ballSize, ballSize);
  
  // Reset bal als hij uit het speelveld gaat
  if (ballX < 0 || ballX > width) {
    ballX = width / 2;
    ballY = height / 2;
    ballSpeedX *= -1;
  }
}
